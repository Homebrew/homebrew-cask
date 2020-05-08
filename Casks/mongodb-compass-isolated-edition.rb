cask 'mongodb-compass-isolated-edition' do
  version '1.21.1'
  sha256 'ec3a1ef073a9c4054a31549405e978d44ddf55da4513c1f8f2f5727986cf6ab9'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
