cask 'navicat-for-oracle' do
  version '11.2.13'
  sha256 '658d835ff94d333b189b22708e6cb5c028dc8fd28a837331bb6ca7a23d8a0faa'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'
  license :commercial

  app 'Navicat for Oracle.app'
end
