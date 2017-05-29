cask 'navicat-premium-essentials' do
  version '12.0.2'
  sha256 'da28c951697a15356a4034845313e4fa1b19a609b559cebc3091f7281f87b3b3'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
