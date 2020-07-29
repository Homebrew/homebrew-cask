cask 'polycom-realpresence' do
  version '3.10.3.72504'
  sha256 '1dc2d12cd5b6e7a90b4fe369e422f20a6a2a42c229fe6b67af8e83e3422f7024'

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDesktop_#{version.dots_to_underscores}.dmg"
  appcast 'https://support.polycom.com/content/support/north-america/usa/en/support/video/realpresence-desktop/realpresence-desktop.html',
          must_contain: version.dots_to_underscores
  name 'Polycom RealPresence Desktop'
  homepage 'https://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'

  pkg 'RealPresenceDesktop.pkg'

  uninstall pkgutil: 'com.polycom.RealPresenceDesktop'
end
