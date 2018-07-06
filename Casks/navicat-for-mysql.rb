cask 'navicat-for-mysql' do
  version '12.0.27'
  sha256 'd5cad433d6c765b04c895b5224b55270c6431b2992ee42457833f2e4bdd7766a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
