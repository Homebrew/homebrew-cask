cask 'navicat-premium-essentials' do
  version '12.0.18'
  sha256 'c462680a5932a64b85c1b7d1aa47fcf2fbc46780fe65c822dbcbfd496fd19003'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '0db83877b751bf764e06dca014856ecb89d4b249dbe270e8a6dcd4cf81cb3e79'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
