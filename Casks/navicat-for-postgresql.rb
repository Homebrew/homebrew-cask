cask 'navicat-for-postgresql' do
  version '12.1.22'
  sha256 '6ce2931265c6b9ffafa3fb000ca77c931b41c6b7f1dfe69d6994748ba000d0c1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
