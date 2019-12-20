cask 'navicat-for-mysql' do
  version '15.0.5'
  sha256 '51a1295ebdeee3e1d422ecdf5b08f6870841ce78170cf6bcc861bed2fa028c72'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
