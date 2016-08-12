cask 'navicat-for-mysql' do
  version '11.2.13'
  sha256 'aacd3aabacd57b8cef0bcdd4c96578921c3bba91c8ecee7559c8e5e59f8b9429'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'
  license :commercial

  app 'Navicat for MySQL.app'
end
