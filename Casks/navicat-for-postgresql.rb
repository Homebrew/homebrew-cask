cask 'navicat-for-postgresql' do
  version '12.1.15'
  sha256 '0f6fd8f300df3dfe7896ceb2b8858bcf9af6ee7ec2ddbd46376b9e3def9a5030'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
