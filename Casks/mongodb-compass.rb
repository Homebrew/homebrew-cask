cask 'mongodb-compass' do
  version '1.2.0'
  sha256 '58fae4d0aae13ce1bd9a39610773d877b3163baa151cb6536bcb4b2005cc929d'

  url "https://downloads.mongodb.com/compass/mongodb-compass-#{version}-darwin-x64.dmg"
  name 'MongoDB Compass'
  homepage 'https://www.mongodb.com/products/compass'
  license :commercial

  app 'MongoDB Compass.app'
end
