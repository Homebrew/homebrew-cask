cask 'mongodb-compass-isolated-edition' do
  version '1.20.4'
  sha256 'cdb6949223d2f9c58467b077d12fbf44add036809c853c681af59eb8086985df'

  url "https://downloads.mongodb.com/compass/mongodb-compass-isolated-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Isolated'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Isolated Edition.app'
end
