cask 'navicat-for-mysql' do
  version '11.2.11'
  sha256 '670f2588be35be8c73d1f1549ff6d98adce3288a371b53a26a92b265b941673b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial

  app 'Navicat for MySQL.app'
end
