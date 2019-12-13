cask 'mongodb-compass-isolated-edition' do
  version '1.20.2'
  sha256 '76f262a368f5eb4878f18add2f1c684437c2c3a247556832b29f808c2c965479'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
