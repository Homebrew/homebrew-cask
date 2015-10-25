cask :v1 => 'navicat-premium-essentials' do
  version '11.1.15'
  sha256 '5ef992da477ef874fde7a3dff89e31f48e12634bf6ecd5a28906ef0275cd764e'

  url "http://download.navicat.com/download/navicatess#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium Essentials.app'
end
