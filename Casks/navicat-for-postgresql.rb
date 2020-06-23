cask 'navicat-for-postgresql' do
  version '15.0.18'
  sha256 '2a3d8d80bcc742ec43b748f2ad13e89bd5fcdfa50aa3cdea8d7cb6ae86f50da2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
