cask 'navicat-for-sqlite' do
  version '12.1.18'
  sha256 '52ff5827e6fa32882beaa45fbbd6f031919f9739a3fb30c0bb733066e53b1fa0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
