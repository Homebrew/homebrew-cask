cask 'mongodb-compass-isolated-edition' do
  version '1.20.3'
  sha256 '92563533005ad801ec76b29f514917f19a73f89934134c9ff30e2aec39ad0432'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
