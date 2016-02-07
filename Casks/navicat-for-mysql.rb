cask 'navicat-for-mysql' do
  version '11.2.7'
  sha256 '82d3f2b3f52c4af7698339170675141582080bf6501c2b6c7b4197be2ea0ca8e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial

  app 'Navicat for MySQL.app'
end
