cask 'navicat-premium-essentials' do
  version '12.0.9'
  sha256 '7a5fcabaabc0097113a4a446d9d75983455b1608df1df0cb69cdfa070e8eba9f'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
