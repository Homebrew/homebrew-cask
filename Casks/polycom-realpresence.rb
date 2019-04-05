cask 'polycom-realpresence' do
  version '3.9.1.70422'
  sha256 '0f95b8cf2c35350324258ea699a878916390a6239f59fff890b975706adf6bd3'

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDesktop_#{version.dots_to_underscores}.dmg"
  name 'Polycom RealPresence Desktop'
  homepage 'http://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'

  pkg 'RealPresenceDesktop.pkg'

  uninstall pkgutil: 'com.polycom.RealPresenceDesktop'
end
