cask 'navicat-premium-essentials' do
  version '11.2.17'
  sha256 '2624730a88b81da448cbd81bc22babb4b837216fa6ec6f8ad0b5a2ccda015510'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
