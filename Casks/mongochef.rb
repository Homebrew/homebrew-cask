cask :v1 => 'mongochef' do
  version '2.0.7'
  sha256 'bc699e2c9fd2062acc4fdad5b519b9a1c95e53991c5c594b95b88b33bf17c00c'

  url "http://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'http://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
