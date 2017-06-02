cask 'navicat-premium-essentials' do
  version '11.2.18'
  sha256 '8e5da83150d3e93a85b634447b55e944a1058ef15250b569aa1ec7a6d987a865'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
