cask 'navicat-for-sqlite' do
  version '12.1.20'
  sha256 '486f59a1db0b0b0943455c82dac8b2ecd81475f176cddb9a79cf0c8020df8fda'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
