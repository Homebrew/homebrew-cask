cask 'airmedia' do
  version '1.0.5.6'
  sha256 'caaf1226a6d24f0ece418b0e1ec98b294f842fcec4eb2f33196f87fa61412b7f'

  url "https://www.crestron.com/downloads/software/airmedia_guest_os_x_#{version}.dmg"
  name 'Crestron AirMedia'
  homepage 'https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations'

  app 'AirMedia.app'
end
