cask 'mongodb-compass-community' do
  version '1.17.0'
  sha256 'a36eed167ac3867fa395d454b2310507b5155a513fb809e99bcf2d5e7a5c67a1'

  url "https://downloads.mongodb.com/compass/mongodb-compass-community-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass Community'
  homepage 'https://www.mongodb.com/products/compass'

  app 'MongoDB Compass Community.app'
end
