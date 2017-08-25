cask 'navicat-for-mysql' do
  version '12.0.12'
  sha256 '063aa7b6f8671b2d27b0f4f6d72d67eddad40d26d0b066452b0c95d626208db0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note#M',
          checkpoint: '7c03a3eb712c392e4255a9775ee816b9be0ba08c54da0c63c42079a7aeaea4e3'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
