cask 'mongodb-compass-readonly' do
  version '1.18.0'
  sha256 '76652eea53584c70ac838005c97c03e150ccb321aa09f1cc6b8ad230401014df'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
