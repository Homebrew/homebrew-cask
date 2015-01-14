cask :v1 => 'navicat-for-oracle' do
  version '11.1.7'
  sha256 '91c1fd2ab4af6d34dc669b351e37160a3a53626162576cde65a7a4598e226a50'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for Oracle.app'
end
