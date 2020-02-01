cask 'polycom-realpresence' do
  version '3.10.2.72052'
  sha256 'f76d39be4503da82fe9092f649728fb6da13cac3883750c4f98fd2b28398e35a'

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDesktop_#{version.dots_to_underscores}.dmg"
  appcast 'https://support.polycom.com/content/support/north-america/usa/en/support/video/realpresence-desktop/realpresence-desktop.html',
          configuration: version.dots_to_underscores
  name 'Polycom RealPresence Desktop'
  homepage 'https://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'

  pkg 'RealPresenceDesktop.pkg'

  uninstall pkgutil: 'com.polycom.RealPresenceDesktop'
end
