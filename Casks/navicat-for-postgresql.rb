cask 'navicat-for-postgresql' do
  version '12.1.23'
  sha256 '607b5b3bdbeb989af38b93a5a68dc1fef3fc04280bada027c21fa309eceb457b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
