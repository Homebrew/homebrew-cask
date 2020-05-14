cask 'mongodb-compass-readonly' do
  version '1.21.2'
  sha256 '404162d4be0a17c49ca6c43f1875e3b43b31ea8001359962fbb09078a8cb61f8'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
