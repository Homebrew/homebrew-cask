cask 'navicat-premium-essentials' do
  version '12.0.24'
  sha256 '2a07431664286dd77ee257a8445d357c22ced6f7bc215951d355e7db8c2ae171'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '5c6f1d28c500519b5a66a3d3b0ee32350d08a7ff4d85e0b2baa32fb95a140e98'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
