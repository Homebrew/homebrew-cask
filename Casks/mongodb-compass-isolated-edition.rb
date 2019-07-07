cask 'mongodb-compass-isolated-edition' do
  version '1.18.0'
  sha256 '33841ca51d9fcd04dcaebf84e2950de25f02a0b1e543e260ee01f7292e5cf923'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
