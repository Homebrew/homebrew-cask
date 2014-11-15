cask :v1 => 'navicat-for-oracle' do
  version '11.1.5'
  sha256 'e4e004e3e7442917aadbb5b80f179998cbd65c94b31250f210847b52c2ba9ed1'

  url "http://download.navicat.com/download/navicat#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_ora_en.dmg"
  homepage 'http://www.navicat.com/products/navicat-for-oracle'
  license :commercial

  app 'Navicat for Oracle.app'
end
