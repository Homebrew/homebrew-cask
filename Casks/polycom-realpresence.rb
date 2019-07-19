cask 'polycom-realpresence' do
  version '3.10.0.71129'
  sha256 '3337bbe8665544e7e9b84587f23f21f2f402976e00c86c0f195d7f89fb51c781'

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDMac_#{version.dots_to_underscores}.dmg"
  appcast 'https://support.polycom.com/content/support/north-america/usa/en/support/video/realpresence-desktop/realpresence-desktop.html',
          configuration: version.dots_to_underscores
  name 'Polycom RealPresence Desktop'
  homepage 'https://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html'

  pkg 'RealPresenceDesktop.pkg'

  uninstall pkgutil: 'com.polycom.RealPresenceDesktop'
end
