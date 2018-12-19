cask 'mongodb-compass-community' do
  version '1.15.4'
  sha256 '8a627e3f06fa9a001cbac8db28560f2c52e0aa2ebdbbfd2eefd6cedd8c85e4bf'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
