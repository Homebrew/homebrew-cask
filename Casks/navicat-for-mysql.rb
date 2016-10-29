cask 'navicat-for-mysql' do
  version '11.2.15'
  sha256 '590b5f9d39ba42fde79923ae39723cdbe39fc4a8da31308e8bdf17f7ceb0addd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
