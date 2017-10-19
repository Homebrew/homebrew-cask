cask 'navicat-premium-essentials' do
  version '12.0.15'
  sha256 '4c7967abf3b14326796d5dfb5c0b6678633183e889f677d802f7f4fd0e0042e3'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
