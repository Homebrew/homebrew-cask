cask 'mongochef' do
  version '3.5.3'
  sha256 '4c3afe4fefb048fc7979da7a0b858242b7df6a65d449f014b871f7f3e6bd8625'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  license :other

  app 'MongoChef.app'
end
