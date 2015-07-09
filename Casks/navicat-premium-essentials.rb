cask :v1 => 'navicat-premium-essentials' do
  version '11.1.13'
  sha256 '1627233be58058f5b10fccc8ec9dfbf1f71b0051a3dcdc96916398e12f4061f5'

  url "http://download.navicat.com/download/navicatess#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium Essentials.app'
end
