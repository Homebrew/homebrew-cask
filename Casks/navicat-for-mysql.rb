cask :v1 => 'navicat-for-mysql' do
  version '11.1.15'
  sha256 'a387caab73cf7feb027010b1cba91d0c536161cefb983a78831bfd805ad5d708'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for MySQL.app'
end
