cask :v1 => 'navicat-premium-essentials' do
  version '11.1'
  sha256 'f73d245487b635d95a86932856255006d5d629054df7090caee8104156a4d598'

  url "http://download.navicat.com/download/navicatess#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium Essentials.app'
end
