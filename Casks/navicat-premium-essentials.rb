cask 'navicat-premium-essentials' do
  version '12.0.11'
  sha256 '1fbbfa4a10c544fffb09d78e0d85a417bad954f2aa9234d5c29ab150cf5e0b96'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
