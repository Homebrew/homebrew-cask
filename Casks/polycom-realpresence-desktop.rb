cask 'polycom-realpresence-desktop' do
  version '3.5.0_59579'
  sha256 '7b52d08b5be50e43b1f943201cbc9507983e19c44fa411f8a57c7b2adceab969'

  url "http://downloads.polycom.com/video/realpresence_desktop/RPDMac-release_#{version}.dmg"
  name 'Polycom RealPresence Desktop'
  homepage 'http://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'
  license :commercial

  pkg 'RealPresenceDesktop.pkg'

  uninstall pkgutil: 'com.polycom.RealPresenceDesktop'
end
