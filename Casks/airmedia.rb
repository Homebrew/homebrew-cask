cask 'airmedia' do
  version '3.1.2'
  sha256 '32869437df42f3a6321551a9251471e088e9faa16ebffc69ae1dd26b7bd0e750'

  url "https://www.crestron.com/downloads/software/airmedia_#{version}_macOS_guest_dmg.zip"
  name 'Crestron AirMedia'
  homepage 'https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations'

  container nested: "airmedia_#{version}_macOS_guest_dmg/airmedia_#{version}_macOS_guest.dmg"

  app 'Crestron AirMedia.app'
end
