cask "polycom-realpresence" do
  version "3.10.6.73302"
  sha256 "3e61c69a4a080f16e5ab7bb303d2f7244c1e551f7916b723191a07ee5927f150"

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDesktop_#{version.dots_to_underscores}.dmg"
  appcast "https://support.polycom.com/content/support/north-america/usa/en/support/video/realpresence-desktop/realpresence-desktop.html",
          must_contain: version.dots_to_underscores
  name "Polycom RealPresence Desktop"
  homepage "https://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html"

  pkg "RealPresenceDesktop.pkg"

  uninstall pkgutil: "com.polycom.RealPresenceDesktop"
end
