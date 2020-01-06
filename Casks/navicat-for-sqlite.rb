cask 'navicat-for-sqlite' do
  version '15.0.7'
  sha256 '3c1162fe9e2b4cf3f36b08629218d8f78165d5887dcf3a687d511bebd3dcde96'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
