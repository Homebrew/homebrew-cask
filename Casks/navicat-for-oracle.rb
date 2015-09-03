cask :v1 => 'navicat-for-oracle' do
  version '11.1.13'   # navicat-premium.rb and navicat-for-* should be upgraded together
  sha256 'e6cd8e28362ff121e2cdae3bbc45c900642a641fd36b2f8021f7bf969c79c978'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat for Oracle.app'
end
