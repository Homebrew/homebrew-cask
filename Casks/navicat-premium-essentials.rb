cask 'navicat-premium-essentials' do
  version '11.2.5'
  sha256 '4151958607ad12e3c49d9f2fd752a8d3485a71bc1643a77e5c54f5c7a1fc8856'

  url "http://download.navicat.com/download/navicatess#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial

  app 'Navicat Premium Essentials.app'
end
