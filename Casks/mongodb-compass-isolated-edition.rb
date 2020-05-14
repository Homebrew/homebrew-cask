cask 'mongodb-compass-isolated-edition' do
  version '1.21.2'
  sha256 'a99fbc8ef7e29e1dc9228dc8b85ad49f3c96b8ef3f29916ec7e16c33c221ff7f'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
