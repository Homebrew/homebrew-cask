cask 'navicat-for-sqlite' do
  version '15.0.5'
  sha256 '9dfb154306e20dff4111be45de2cfa36dd5fa7187a8b6531dfb32845a6582497'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
