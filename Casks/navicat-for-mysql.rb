cask 'navicat-for-mysql' do
  version '12.0.23'
  sha256 'c1abbddf926c65b70f731f3cde5686caef2e9619867b597f499747bb802b5bae'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note',
          checkpoint: '17746fafc686102cf60bdf899339142305eb44a33576c0543ab4a3234c3b9c33'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
