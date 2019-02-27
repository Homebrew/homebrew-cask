cask 'navicat-for-sqlite' do
  version '12.1.16'
  sha256 'a7c809e8c00b1f10f66c89f99d1772c79739048345ba4f98611e29f20faec81b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
