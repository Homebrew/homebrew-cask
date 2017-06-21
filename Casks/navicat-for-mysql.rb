cask 'navicat-for-mysql' do
  version '12.0.5'
  sha256 'a05751caa4469ac1e82586af1254964ebde1ceaedafe7f5e766ad45a022a7ab8'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note',
          checkpoint: '7ca5fe14f57dab0ae1e497c6a7f6b0b63a346c8e5aad929460796fc8709a81b9'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
