cask 'navicat-for-postgresql' do
  version '12.1.12'
  sha256 '8d1b821e59d22608b7316bcacd3fcc0fb7989bcb30207781c370f08b37a187d1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
