cask 'islide' do
  version '1.1.0'
  sha256 'c167cadf7bb85bb760994bc49d991b4b3a05b0c2f3cdb9648c9f61c1cc549528'

  url "https://static.islide.cc/site/product/package/dmg/iSlide-#{version}.dmg"
  appcast 'https://static.islide.cc/site/product/package/dmg/latest-mac.yml'
  name 'iSlide'
  homepage 'https://www.islide.cc/'

  auto_updates true

  app 'iSlide.app'
end
