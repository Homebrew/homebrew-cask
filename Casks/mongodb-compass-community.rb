cask 'mongodb-compass-community' do
  version '1.19.1'
  sha256 'fe4793746cfce313cc80cd69201b13046dcdc1cf120c0ee27937e5da8a3db035'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
