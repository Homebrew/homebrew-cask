cask 'airmedia' do
  version '3.1.29'
  sha256 '95585254f8d82e16229af9f89da0806f0c5ff8f927d2b21efcdeefd88b912b52'

  url "https://www.crestron.com/Crestron/media/Crestron/WidenResources/Web%20Miscellaneous/airmedia_osx_#{version.dots_to_underscores}_guest.zip"
  appcast 'https://www.crestron.com/en-US/Products/Featured-Solutions/Airmedia'
  name 'Crestron AirMedia'
  homepage 'https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations'

  container nested: "airmedia_osx_#{version}_guest/airmedia_osx_#{version}_guest.dmg"

  app 'Crestron AirMedia.app'
end
