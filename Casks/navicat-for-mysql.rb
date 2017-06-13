cask 'navicat-for-mysql' do
  version '12.0.2'
  sha256 '82b407f81df5cbd468f76fca65384c5827ee505a0dc3fb1058ca58f95f10122e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note',
          checkpoint: '34e696692858e4c0ad6a52a60590c2b509ab93d3084c369ad354c537e0b4934d'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
