cask 'navicat-for-sqlite' do
  version '15.0.10'
  sha256 '23024ffb08e2d4ffde51bc95bb2c73866719bbb339af54e49743d98965510b06'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
