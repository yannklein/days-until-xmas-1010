# Write a method which 
# returns the number of days until next Xmas.
# using TDD (Test driven development)

# Opt1: return number of days for any date!
# Opt2: make it work after Dec 25th


#        ____________   
#  [IN] | (params)   |  [OUT]
# ----->|   method   |----------> 
#  args |____________| returned
#                       value 

# Method name: xmas_calc
# Method signature (params? returned value?):
# params: some_date (Date)
# returned: Integer

# Code
require 'date'

def xmas_calc(some_date = Date.today)
  (Date.new(2022,12,25) - some_date).to_i
end

# Tests
today = Date.today

puts "-- Test 1 ⛄️ -- "
puts "should return an integer"
print "Result: "
puts xmas_calc.class == Integer

puts "\n-- Test 2 🎄 -- "
puts "should return a positive integer"
print "Result: "
puts xmas_calc.positive?

puts "\n-- Test 3 ❄️ -- "
puts "should return 0 on Xmas day"
print "Result: "
puts xmas_calc(Date.new(2022, 12, 25)) == 0

puts "\n-- Test 3 ❄️ -- "
puts "should return 87 on today's date"
print "Result: "
puts xmas_calc == 87