cask 'mongochef' do
  version '3.6.0'
  sha256 'cf089a5aabbb91846b8f73bcd61f507bff3a8dfd4b984ca070b7905c85cb6e66'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  license :other

  app 'MongoChef.app'
end
