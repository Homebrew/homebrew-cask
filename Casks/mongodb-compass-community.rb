cask 'mongodb-compass-community' do
  version '1.20.4'
  sha256 '0364510e8c7eafb3cec39d9f86a8a14476323beb8dc7050a2d6daa51b01dafee'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
