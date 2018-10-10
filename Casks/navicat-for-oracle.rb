cask 'navicat-for-oracle' do
  version '12.1.9'
  sha256 '109fd65fcba466af189d9cfb3b3d5c5f573411586ac39ed52d8b222c7834e42b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
