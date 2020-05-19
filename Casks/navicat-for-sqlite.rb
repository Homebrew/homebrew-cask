cask 'navicat-for-sqlite' do
  version '15.0.16'
  sha256 '36f60cc34a27bd2d039b0cb88dc969b83a3676e50d8691a98ef0496ac6471a8d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
