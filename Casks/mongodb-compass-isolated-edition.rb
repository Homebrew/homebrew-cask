cask 'mongodb-compass-isolated-edition' do
  version '1.19.12'
  sha256 'c6d8aac98a313db4b2f6d7f2f75632b75de743ead7db24d18ebb1f2c13573c17'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
