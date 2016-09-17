cask 'navicat-for-oracle' do
  version '11.2.14'
  sha256 '25d9ef96d35f2a01bc5da652bac5c099cd9ef4a46edadeb90c757df4fd97771d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'
  license :commercial

  app 'Navicat for Oracle.app'
end
