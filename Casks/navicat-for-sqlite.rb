cask 'navicat-for-sqlite' do
  version '15.0.3'
  sha256 'a5648641e1a55b9307ac590b8e7635b3913fd19c85e9f403ef585a8bcf46ee60'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
