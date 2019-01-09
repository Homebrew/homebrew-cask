cask 'mongodb-compass-readonly' do
  version '1.15.2'
  sha256 '304d6787a1d50d351f37455c0b1744ff1c1c688c0f8b133fa6f3c006640e42f7'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
