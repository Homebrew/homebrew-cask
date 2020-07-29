cask 'navicat-for-sqlite' do
  version '15.0.18'
  sha256 '93747ca90410e83fb401c88ad26fc7f99aa5a868fb8196cb09438b6944442156'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
