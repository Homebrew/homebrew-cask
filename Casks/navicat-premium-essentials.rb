cask 'navicat-premium-essentials' do
  version '11.2.16'
  sha256 'a0493442994c2c4f8bca81073f84305207da467c81b1d3563eb9f1c6b5b66c6b'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
