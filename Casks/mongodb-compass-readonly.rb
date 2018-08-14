cask 'mongodb-compass-readonly' do
  version '1.14.6'
  sha256 '9e6007a2bd3d642566cf8a1c50e938ed21b234f67f5296ad43ef037535941e44'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
