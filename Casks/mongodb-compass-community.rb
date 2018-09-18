cask 'mongodb-compass-community' do
  version '1.15.2'
  sha256 'cc916d7421f88080b4b90342326709a71c494e72d8549e4156886ed40bfd7d3e'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
