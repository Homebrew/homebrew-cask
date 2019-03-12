cask 'mongodb-compass-community' do
  version '1.16.3'
  sha256 '5c87a9b8a042decea07b625564cc12f6b056ebb4288e249ba0bfd7c6c4f1b953'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
