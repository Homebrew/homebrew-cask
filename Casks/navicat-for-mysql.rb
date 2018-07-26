cask 'navicat-for-mysql' do
  version '12.1.3'
  sha256 'ed60fe6058f6e22944103e32f90b9c1372b6c5c27b4f28323e5f1e87d3e57303'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
