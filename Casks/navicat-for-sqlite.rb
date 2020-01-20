cask 'navicat-for-sqlite' do
  version '15.0.8'
  sha256 'eac8ea5042746c8fad1cc3fa9fcec011f6c2968c9115b1f8dcb7a2fa437506cd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
