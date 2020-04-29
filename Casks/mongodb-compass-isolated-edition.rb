cask 'mongodb-compass-isolated-edition' do
  version '1.21.0'
  sha256 '9c600542300556db42c69d5fc02c04d9e607bf5280ec48ee4f35af71c45cbf74'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
