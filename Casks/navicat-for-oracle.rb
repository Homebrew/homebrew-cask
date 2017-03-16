cask 'navicat-for-oracle' do
  version '11.2.17'
  sha256 '8a22eb43edba11055f38144be9ed96c858354aeb5c77ac682aaf979b490b625f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
