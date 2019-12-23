cask 'navicat-for-mysql' do
  version '15.0.6'
  sha256 '595380167711dce8c616efdc9b6b2e89b48377fa83789a0453a5ed68f0bb73c1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
