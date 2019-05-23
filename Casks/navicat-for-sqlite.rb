cask 'navicat-for-sqlite' do
  version '12.1.22'
  sha256 'ad0694766fba2e87a9781195ea4c90baae8fa4cee59375c942f9d3f464f90044'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
