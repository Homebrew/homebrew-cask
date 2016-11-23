cask 'navicat-for-mysql' do
  version '11.2.15'
  sha256 'f74b58c6a1b04dca1a9708bc5642cb07e56c22b1d0f4c64c84bca6cce71edab9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
