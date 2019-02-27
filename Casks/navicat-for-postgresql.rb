cask 'navicat-for-postgresql' do
  version '12.1.16'
  sha256 'c8b168bf3701e20b6c175ceaa1854313249ed8dace62fb5cc38ea448bb96b949'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
