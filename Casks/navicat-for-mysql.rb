cask 'navicat-for-mysql' do
  version '12.0.18'
  sha256 '220250ffb4f162e2ccd26ff16298f37a3e01cf50828fdf05beae1f16a071c88a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note',
          checkpoint: '27b473e57167cc4eaadd9cead4baf4afd39635aa32e37e37c9b8e1d8e0595b97'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
