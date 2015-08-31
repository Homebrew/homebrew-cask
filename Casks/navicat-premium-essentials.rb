cask :v1 => 'navicat-premium-essentials' do
  version '11.1.13'
  sha256 '8cabc6282f10b9f418c81289d11a1501840fd5a48f80329fea29367a52646e92'

  url "http://download.navicat.com/download/navicatess#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium Essentials.app'
end
