cask 'mongodb-compass-isolated-edition' do
  version '1.20.5'
  sha256 '4470d107785f6a39f9fbd73976d3d94b2572de2ab925fba05f621272c474aef0'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
