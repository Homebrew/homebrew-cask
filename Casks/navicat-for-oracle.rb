cask 'navicat-for-oracle' do
  version '11.2.9'
  sha256 '91a8254a992c1cb6d2a066359bd961648867e7cdedc65859f437c313b243f42c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial

  app 'Navicat for Oracle.app'
end
