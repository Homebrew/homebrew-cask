cask 'navicat-for-sqlite' do
  version '15.0.17'
  sha256 'db8dbd551fc468d3713c227d650ee33d9a5a872e89cf9075f59b7d332ef8317b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
