cask :v1 => 'navicat-for-oracle' do
  version '11.1.17'
  sha256 '2fa7bded4307dc52378263fbeec810c2cc2637e30b1d2f1424965df2022f27a7'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for Oracle.app'
end
