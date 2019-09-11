cask 'mongodb-compass-community' do
  version '1.19.12'
  sha256 '1db39b78580f1e8675f995a7b98d2ae97c6dde597b5bef3827f9b5855430fc89'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  appcast 'https://www.mongodb.com/download-center/compass'
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
