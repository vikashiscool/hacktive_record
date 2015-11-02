# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'
# require './models/speaker.rb'
# require './models/talk.rb'

p "helllooo from your seed file"

# Can you seed your database with speaker and talks?

# Create objects
5.times do
  Speaker.create({  
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    email: FFaker::Internet.free_email,
    phone: FFaker::PhoneNumber.short_phone_number
  })
end

5.times do
  Talk.create({
    topic: FFaker::Company.catch_phrase,
    duration: rand(1..6)*15,
    # speaker_id: Speaker.all.sample.id
    })
end
