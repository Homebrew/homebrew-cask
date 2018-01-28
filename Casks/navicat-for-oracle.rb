cask 'navicat-for-oracle' do
  version '12.0.22'
  sha256 '3827ec1da162e97893b0c2ffa33641f0fa1eba4a05dc8e4e29fbe5c09e40b375'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-oracle-release-note',
          checkpoint: '826d769f2791695070b1fe0b3c38b3ddefe19ec108bd6f5e2d06587da12645ab'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
