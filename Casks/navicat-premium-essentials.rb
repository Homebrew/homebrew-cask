cask 'navicat-premium-essentials' do
  version '11.2.9'
  sha256 '85f4123170b5208ad3da4ffe37bce55303b92fd8e8fd57095aadb70d52b04e7e'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'http://navicat.com/products/navicat-essentials'
  license :commercial

  app 'Navicat Premium Essentials.app'
end
