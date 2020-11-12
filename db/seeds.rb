# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..2).each do |number|
  User.create!(name: 'test_name_' + number.to_s, email: 'test_email' + number.to_s + '@aaa.aa', password: "test")
end

(1..2).each do |user_id|
  user = User.find(user_id)
  (1..50).each do |number|
    task = user.tasks.build(content: 'test title ' + number.to_s, status: 'status ' + number.to_s)
    task.save
  end
end