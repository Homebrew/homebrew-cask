cask :v1 => 'navicat-for-oracle' do
  version '11.1.9'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'bcba8547a3a9d522d58aa7180aaafb6c748bb9d7d3668e07512aba128bd6eeab'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for Oracle.app'
end
