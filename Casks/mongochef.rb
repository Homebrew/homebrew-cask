cask 'mongochef' do
  version '3.2.4'
  sha256 'bda8abdfd005d6b5dce469e3652cc38a798c44c70e6368fdc7da5c1e8046a9a2'

  url "https://cdn.3t.io/mongochef/mac/#{version}/MongoChef.dmg"
  name 'MongoChef'
  homepage 'https://3t.io/mongochef/'
  # License is free for personal use (gratis) and paid for business use (commercial)
  license :other

  app '3T MongoChef.app'
end
