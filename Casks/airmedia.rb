cask 'airmedia' do
  version '3.1.2'
  sha256 '7e36017df29860cfc7bf613b1da160cdab80f633fa5f21f6f734eca933a1dda4'

  # p.widencdn.net/c0b4qy was verified as official when first introduced to the cask
  url "https://p.widencdn.net/c0b4qy/software_airmedia_macOS_#{version}_guest.dmg"
  name 'Crestron AirMedia'
  homepage 'https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations'

  app 'Crestron AirMedia.app'
end
