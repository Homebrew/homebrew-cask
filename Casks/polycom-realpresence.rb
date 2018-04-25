cask 'polycom-realpresence' do
  version '3.9.0.69879'
  sha256 '8b2e42522d79c438d0067cdfa8a99743fca98e1e5c759d74565ead4ff9d34265'

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDMac_#{version.dots_to_underscores}.dmg"
  name 'Polycom RealPresence Desktop'
  homepage 'http://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'

  pkg 'RealPresenceDesktop.pkg'

  uninstall pkgutil: 'com.polycom.RealPresenceDesktop'
end
