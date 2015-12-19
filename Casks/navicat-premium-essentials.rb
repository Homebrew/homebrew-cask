cask 'navicat-premium-essentials' do
  version '11.1.17'
  sha256 '99523352805cbbc85706e86e9d06014cd95eb0146d8045e38be70c44d4a2ce99'

  url "http://download.navicat.com/download/navicatess#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial
  tags :vendor => 'Navicat'

  app 'Navicat Premium Essentials.app'
end
