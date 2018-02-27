cask 'navicat-for-oracle' do
  version '12.0.23'
  sha256 'f547b1afffcbc7922eca98592b726798419409daf2ab5ae80041e124cc5c0ad6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-oracle-release-note',
          checkpoint: '3e8e4e189f6cf8a5350f11d083de952572a7cd540c26a8d73f8ee73b8e970118'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
