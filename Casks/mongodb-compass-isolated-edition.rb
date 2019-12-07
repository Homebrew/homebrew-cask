cask 'mongodb-compass-isolated-edition' do
  version '1.20.1'
  sha256 'b62a08100af8a2c9ea861a9dea093b886940db1afd63e9d0d5b0fbc0b30a43fd'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
