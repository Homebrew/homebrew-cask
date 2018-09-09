cask 'navicat-for-oracle' do
  version '12.1.7'
  sha256 '904dfc03444d7c1a0c857c822640a52ce1bbac7b5bd89b504b5ef8cc5a50a3a9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
