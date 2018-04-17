cask 'polycom-realpresence' do
  version '3.7.0_64705'
  sha256 '3cddfa1c64bb3cf1d26ab6d8c440c5a30f19054ad350be97cce55bf1ab59782a'

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDMac-release_#{version}.dmg"
  name 'Polycom RealPresence Desktop'
  homepage 'http://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'

  pkg 'RealPresenceDesktop.pkg'

  uninstall pkgutil: 'com.polycom.RealPresenceDesktop'
end
