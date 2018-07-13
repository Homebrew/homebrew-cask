cask 'navicat-for-mysql' do
  version '12.0.28'
  sha256 '392f436f8061926a61b914a9fb66b2737e47c1d25e98c9f2302c594ce75b5247'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
