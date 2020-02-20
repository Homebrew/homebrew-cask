cask 'navicat-for-mysql' do
  version '15.0.10'
  sha256 '980393bfb7346a81b64cc5549fd8b1088d6d73fb25f8418003a24150bc96f72c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
