cask 'airmedia' do
  version '2.0.14'
  sha256 'f40761616c814d005f4d47bc8b5ef6aba40fdb518c5e40358e2224d24429fb9b'

  url "https://www.crestron.com/downloads/software/airmedia_#{version}_macOS_guest_dmg.zip"
  name 'Crestron AirMedia'
  homepage 'https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations'

  container nested: "airmedia_#{version}_macOS_guest_dmg/airmedia_#{version}_macOS_guest.dmg"

  app 'Crestron AirMedia.app'
end
