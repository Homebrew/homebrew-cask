cask 'navicat-for-mysql' do
  version '15.0.3'
  sha256 'b63f7df88d48484743e33e34a11e1d199f8fa9f564b1de478d9894bf530a8919'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
