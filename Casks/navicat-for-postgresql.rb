cask 'navicat-for-postgresql' do
  version '12.1.25'
  sha256 'c1167a806aea76e9b2f4ac4ecd05c00a86e7eaf3ade74dede6c2b2d676c76e1f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
