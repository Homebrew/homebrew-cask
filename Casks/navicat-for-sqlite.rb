cask 'navicat-for-sqlite' do
  version '15.0.14'
  sha256 'f7eb30f484ce0d9f9e069fc504a43471ef2fe16c9fb324922439afa0e09f3c98'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
