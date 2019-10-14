cask 'mongodb-compass-readonly' do
  version '1.19.12'
  sha256 '35a62501ac5004b187940e705699eb677cbe08fbd3c9370d416f5be5874f23fb'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
