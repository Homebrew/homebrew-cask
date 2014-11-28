cask :v1 => 'navicat-for-mysql' do
  version '11.1.5'
  sha256 '415ab48ff1f90fe090460a501ed1c1102d7e1876a7d54e815d57e3ec22a69eb2'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_mysql_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial

  app 'Navicat for MySQL.app'
end
