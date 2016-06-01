cask 'navicat-for-oracle' do
  version '11.2.11'
  sha256 '54c358540d855cf182d294a7dd0935b30d0e18ac8fe9fa7460525a86c0218606'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial

  app 'Navicat for Oracle.app'
end
