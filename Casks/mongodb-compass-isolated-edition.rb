cask 'mongodb-compass-isolated-edition' do
  version '1.19.3'
  sha256 'd8d0be19ec53235748672059f97a65a87a7a50263ddf1acc8eff939431e9e542'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
