cask 'navicat-for-mysql' do
  version '11.2.6'
  sha256 'ada15231759df2109718e9f48436cd688bda6c05a3d031f55b24d8ea5534e166'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial

  app 'Navicat for MySQL.app'
end
