cask 'mongochef' do
  version '3.5.0'
  sha256 'c4ce8535fca32b243c6e549e66305426880ebc521ece71ae3e109be6cfde78fd'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
