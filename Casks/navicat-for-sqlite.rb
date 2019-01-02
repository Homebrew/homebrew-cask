cask 'navicat-for-sqlite' do
  version '12.1.12'
  sha256 'd12a2d0c5af4144540d0896bd4fb1c30f70fe28e10c5c7618ff7f15857c5e345'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
