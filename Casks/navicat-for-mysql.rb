cask 'navicat-for-mysql' do
  version '12.1.5'
  sha256 '75565999fb49b34ca942c9e40e24b84ae780e7e79101fa5360aec7b614f4c5c7'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
