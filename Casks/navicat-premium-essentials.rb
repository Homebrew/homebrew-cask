cask 'navicat-premium-essentials' do
  version '12.0.17'
  sha256 '13b82f347b8ad408dc7fd51ba7f0368d0a8684b78e5a6326bb30336645292e6c'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '08541a2490969b1fdb312f588c330359355e23ce3bfc441e58081cd633c54e57'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
