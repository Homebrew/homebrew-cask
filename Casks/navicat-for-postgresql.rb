cask 'navicat-for-postgresql' do
  version '12.1.25'
  sha256 'ca1367cea7f1ff53ee90bfc341731b2e3daa9aa3d7248e3ed79c440f90f3662a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
