cask 'navicat-premium-essentials' do
  version '12.1.9'
  sha256 '9138d304398fbeeb7e1c85f0922681c9f8c87ab8dfcdca8e90f8c6c191449b47'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
