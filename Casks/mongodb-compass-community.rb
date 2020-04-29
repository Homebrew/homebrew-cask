cask 'mongodb-compass-community' do
  version '1.21.0'
  sha256 'faa147d5c2d76f697820e784d7d8c51b5f6e9df8632386b3390b7c7dcc4fc06c'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
