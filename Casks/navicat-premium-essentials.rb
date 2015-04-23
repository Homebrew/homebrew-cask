cask :v1 => 'navicat-premium-essentials' do
  version '11.1.12'
  sha256 '3a2861c9f6742f5b3f8acc7e298d2281441b9c993144b88a6625aa92afc60455'

  url "http://download.navicat.com/download/navicatess#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium Essentials.app'
end
