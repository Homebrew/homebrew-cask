cask :v1 => 'navicat-for-oracle' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'd663cea98001f526da7c4ad29f953331c4a728a13d6764dfa09bb45ae07a0e5e'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for Oracle.app'
end
