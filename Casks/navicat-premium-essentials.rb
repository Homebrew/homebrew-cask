cask 'navicat-premium-essentials' do
  version '11.2.15'
  sha256 'f1b3ae67e28867740591635885f6562fc44d5f9be0242d4e813af452e3b4c381'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
