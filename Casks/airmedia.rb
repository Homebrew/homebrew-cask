cask 'airmedia' do
  version '3.1.2'
  sha256 '32869437df42f3a6321551a9251471e088e9faa16ebffc69ae1dd26b7bd0e750'

  url "https://p.widencdn.net/c0b4qy/software_airmedia_macOS_#{version}_guest.dmg"
  name 'Crestron AirMedia'
  homepage 'https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations'

  container nested: "airmedia_#{version}_macOS_guest_dmg/airmedia_#{version}_macOS_guest.dmg"

  app 'Crestron AirMedia.app'
end
