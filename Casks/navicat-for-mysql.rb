cask 'navicat-for-mysql' do
  version '11.2.16'
  sha256 'd1a74b80e778ad7643ba50e50e5b9b9e291ce7f79b1e24def3a19316d1f9c7fa'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
