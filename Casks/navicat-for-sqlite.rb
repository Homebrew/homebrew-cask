cask 'navicat-for-sqlite' do
  version '12.1.23'
  sha256 '82fbd8249630cd209728fcd2eaac95f2535363c5b8dd0b902b11b9085c8b8083'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
