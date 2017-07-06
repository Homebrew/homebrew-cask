cask 'navicat-for-mysql' do
  version '12.0.7'
  sha256 'b1083c4a4727879619cf62fb8259e1810909e6b58235ce5aaba843fa62c7ef69'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note#M',
          checkpoint: '59ee399fc001a0b69cad9f3d54f12c09649e14eedf97f3eded2010c0c9407f17'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
