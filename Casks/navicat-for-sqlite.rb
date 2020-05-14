cask 'navicat-for-sqlite' do
  version '15.0.15'
  sha256 '248c85e9069de5125d67ecbccac4ab1f3c1a24a39bcee8e4f119273dfd4b95ff'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
