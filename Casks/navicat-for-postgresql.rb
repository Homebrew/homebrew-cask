cask 'navicat-for-postgresql' do
  version '12.1.18'
  sha256 '5149e6c4a41a6125bc5f8314f48551fbe9b64a3eaac1e5310a36765ccc45f561'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
