cask 'navicat-for-oracle' do
  version '12.0.2'
  sha256 'd3e0183be3c68d61f848845ba9361afde54b18b9472983c34b55dd91d0562abd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note',
          checkpoint: 'd3b6b21330decd6c0990814a746351a82ccb41e370514f43659e44062962130e'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
