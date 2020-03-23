cask 'navicat-for-sqlite' do
  version '15.0.12'
  sha256 '9f7ce8d73f94f96ca20d9cece617e605653a4abdadbcaa0f6abb2918b4d642ae'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
