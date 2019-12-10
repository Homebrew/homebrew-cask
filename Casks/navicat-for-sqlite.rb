cask 'navicat-for-sqlite' do
  version '15.0.4'
  sha256 'ce148a3b182b413dc79d05f8bce6066ef62fae797d22979eea777f786ecd73fd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
