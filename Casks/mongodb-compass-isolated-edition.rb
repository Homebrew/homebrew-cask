cask 'mongodb-compass-isolated-edition' do
  version '1.19.13'
  sha256 '5978944f20ba526174f7cb3038a8aaf71c951b2f5f32cf7cc55e1250b4131d51'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
