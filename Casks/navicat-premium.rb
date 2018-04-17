cask 'navicat-premium' do
  version '12.0.24'
  sha256 '178896ddf20b1278f931affbb5eac3042a604bdcbb39959458164b657e0fbbf0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '5c6f1d28c500519b5a66a3d3b0ee32350d08a7ff4d85e0b2baa32fb95a140e98'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
