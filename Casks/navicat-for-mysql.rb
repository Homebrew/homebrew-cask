cask 'navicat-for-mysql' do
  version '11.2.14'
  sha256 '1bda45092337abc050d05220ef72ab9cd99f34571b7f94912123aef4d75965b6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
