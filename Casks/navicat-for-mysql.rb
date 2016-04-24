cask 'navicat-for-mysql' do
  version '11.2.10'
  sha256 '4597d36b41eb6bacabbdd046be7654dc0001aeefe6c079faa5925e17e5ff8007'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial

  app 'Navicat for MySQL.app'
end
