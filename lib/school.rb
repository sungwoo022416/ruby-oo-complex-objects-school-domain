# code here!
require 'pry'

class School
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(full_name, grade)
        roster[grade] ||= []
        roster[grade] << full_name
    end

    def grade(retrieve_student)
        roster[retrieve_student]
    end

    def sort
        #idea shared by malcom from group-work
        arranged_roster = {}
        roster.each do |grade, full_name|
            arranged_roster[grade] = full_name.sort
        end
        arranged_roster
      end
    end