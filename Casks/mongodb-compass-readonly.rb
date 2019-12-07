cask 'mongodb-compass-readonly' do
  version '1.20.1'
  sha256 '0dc456f83274c208014d4fd90c9aea04a69a683c9013a507e95f20e88992dcc2'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
