# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [{title: "Back to the Future", description: "A young man is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.", release_year: 1985, image_url: "http://ia.media-imdb.com/images/M/MV5BMjA5NTYzMDMyM15BMl5BanBnXkFtZTgwNjU3NDU2MTE@._V1_UX182_CR0,0,182,268_AL_.jpg"}, {title: "Blade Runner", description: "A blade runner must pursue and try to terminate four replicants who stole a ship in space and have returned to Earth to find their creator.", release_year: 1982, image_url: "http://ia.media-imdb.com/images/M/MV5BMTA4MDQxNTk2NDheQTJeQWpwZ15BbWU3MDE2NjIyODk@._V1_UX182_CR0,0,182,268_AL_.jpg"}, {title: "Inside Out", description: "After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.", release_year: 2015, image_url: "http://ia.media-imdb.com/images/M/MV5BOTgxMDQwMDk0OF5BMl5BanBnXkFtZTgwNjU5OTg2NDE@._V1_SX214_AL_.jpg"}]

users = [{first_name: "josh", last_name: "josh", username: "josh", email: "josh@josh.com", password: "josh"}, {first_name: "bob", last_name: "bob", username: "bob", email: "bob@bob.com", password: "bob"}, {first_name: "joe", last_name: "joe", username: "joe", email: "joe@joe.com", password: "joe"}]

movies.each do |movie|
  Movie.create(movie)
end

users.each do |user|
  User.create(user)
end

friend_requests = [{sender: User.first, recipient: User.find(2), status: true}, {sender: User.first, recipient: User.find(3), status: true}]

friend_requests.each do |request|
  FriendRequest.create(request)
end


libraries = [{user: User.first, name: "Badassery"}, {user: User.first, name: "Embarrassing Flicks"}, {user: User.first, name: "Action Movies"}, {user: User.find(2), name: "Horror"}]

libraries.each do |library|
  Library.create(library)
end

LibraryMovie.create(library: Library.first, movie: Movie.first, user: User.first)
4.