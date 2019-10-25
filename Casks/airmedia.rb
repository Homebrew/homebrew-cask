cask 'airmedia' do
  version '3.1.29'
  sha256 '809d193a9f71494734be57b3bebc2912f284acd88f4bc408486ef6fb6951522d'

  url "https://www.crestron.com/Crestron/media/Crestron/WidenResources/Web%20Miscellaneous/airmedia_osx_#{version.dots_to_underscores}_guest.zip"
  appcast 'https://www.crestron.com/en-US/Products/Featured-Solutions/Airmedia'
  name 'Crestron AirMedia'
  homepage 'https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations'

  container nested: "airmedia_osx_#{version}_guest/airmedia_osx_#{version}_guest.dmg"

  app 'Crestron AirMedia.app'
end
