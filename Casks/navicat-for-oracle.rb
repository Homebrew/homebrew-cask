cask :v1 => 'navicat-for-oracle' do
  version '11.1.12'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'efe3b7edf8f3bb83731950934e40b530c9d2b8c288955b462af2da0abe22e0bb'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for Oracle.app'
end
