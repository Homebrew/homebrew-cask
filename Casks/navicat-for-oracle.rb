cask 'navicat-for-oracle' do
  version '11.2.7'
  sha256 '0cc4ec43d3f0f05af62cd9ffa28eda120e977bd1de65e866c1870d8196aafdd5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial

  app 'Navicat for Oracle.app'
end
