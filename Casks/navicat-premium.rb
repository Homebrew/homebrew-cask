cask 'navicat-premium' do
  version '12.0.28'
  sha256 'af038992d0dfbf2ce41006e57e40bb3b5469c2b5763dcc8b475b46c6ba4bb474'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
