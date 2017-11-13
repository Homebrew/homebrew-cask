cask 'navicat-premium' do
  version '12.0.18'
  sha256 '0677642723aaaddd4ec68c813adf6a5335f966c340faa071192e1c7345853e95'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '0db83877b751bf764e06dca014856ecb89d4b249dbe270e8a6dcd4cf81cb3e79'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
