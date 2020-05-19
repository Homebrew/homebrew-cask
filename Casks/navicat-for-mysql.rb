cask 'navicat-for-mysql' do
  version '15.0.16'
  sha256 'b977b0628dfe5cf37c387410ab81a8008f7c84c6e3088acbd79b1094927ec35a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
