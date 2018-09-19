cask 'navicat-for-oracle' do
  version '12.1.8'
  sha256 '4a83c19456605c35761a8b3e700c44b0df3c1a56348e875375afa5840f814dfa'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-oracle-release-note'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
