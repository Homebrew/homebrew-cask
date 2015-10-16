cask :v1 => 'polycom-realpresence-desktop' do
  version '3.3'
  sha256 '75cc90740112f055ae85955f16a9da255bed60819e00a6343d42648d155b8c0c'

  url 'http://downloads.polycom.com/video/realpresence_desktop/RPDMac-release_3.3_50871.dmg'
  name 'Polycom RealPresence Desktop'
  homepage 'http://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'
  license :commercial

  pkg 'RealPresenceDesktop.pkg'

  uninstall :pkgutil => 'com.polycom.RealPresenceDesktop'
end
