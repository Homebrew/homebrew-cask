cask 'navicat-for-mysql' do
  version '15.0.7'
  sha256 'cb84b8cea1f2c2507a33af6551cee88192a1e009c85e95931d823eacafac671a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
