cask 'polycom-realpresence' do
  version '3.9.0.70051'
  sha256 '56a7210039dc7e2fd7c9ad74e137f0d41362b963a607a1d4b86433f61f69f86c'

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDMac_#{version.dots_to_underscores}.dmg"
  name 'Polycom RealPresence Desktop'
  homepage 'http://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'

  pkg 'RealPresenceDesktop.pkg'

  uninstall pkgutil: 'com.polycom.RealPresenceDesktop'
end
