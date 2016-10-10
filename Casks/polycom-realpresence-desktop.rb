cask 'polycom-realpresence-desktop' do
  version '3.5.1_61068'
  sha256 '166159efe603d5df950e46ac72aa245d1fa4a21a78df811d901f44de5b56ef4c'

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDMac-release_#{version}.dmg"
  name 'Polycom RealPresence Desktop'
  homepage 'http://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'

  pkg 'RealPresenceDesktop.pkg'

  uninstall pkgutil: 'com.polycom.RealPresenceDesktop'
end
