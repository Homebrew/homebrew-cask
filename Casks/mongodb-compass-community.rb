cask 'mongodb-compass-community' do
  version '1.19.0'
  sha256 '50bab1517dbac4176818dfb8a695e3fb604ea85aa48c3dd8d8d4fc7ca0adc562'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
