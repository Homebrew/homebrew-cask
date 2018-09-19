cask 'navicat-for-mysql' do
  version '12.1.8'
  sha256 'd8685c8093ad6e19b609f8f9457dda736d0791604e0d6798462a889272d14f12'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
