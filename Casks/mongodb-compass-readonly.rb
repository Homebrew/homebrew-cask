cask 'mongodb-compass-readonly' do
  version '1.19.1'
  sha256 'bacd516091fb0db25ec52e317e3f29899094c43b967127808b18b5ae0b5e3994'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
