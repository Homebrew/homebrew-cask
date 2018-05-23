cask 'mongodb-compass-readonly' do
  version '1.13.1'
  sha256 'cdd05692c9698b9a91ba62fc0f7b888faaffb4b09129a04070fcac2e13512cdb'

  url "https://downloads.mongodb.com/compass/mongodb-compass-readonly-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Readonly'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Readonly.app'
end
