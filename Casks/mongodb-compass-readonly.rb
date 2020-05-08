cask 'mongodb-compass-readonly' do
  version '1.21.1'
  sha256 '3b3d09f91d2c8f553a2e747cb288ba35a9fbbab52886529acf277035a10b62fe'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
