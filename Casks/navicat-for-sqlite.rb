cask 'navicat-for-sqlite' do
  version '12.1.27'
  sha256 'db180d5450114d22b1dc9e0ae49257383f1bc43c7487030e5bf1da908e7af70d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
