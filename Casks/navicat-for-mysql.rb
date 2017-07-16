cask 'navicat-for-mysql' do
  version '12.0.9'
  sha256 'ea8aa19ae46e57f7762bcb6cae2f082650675119be2a6620642ff90b148938e1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note#M',
          checkpoint: '9b92707d3cf5f4355e623c6cea606d47176d900a2fdfdcee258fad17b24c3a99'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
