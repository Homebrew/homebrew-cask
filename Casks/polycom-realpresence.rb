cask "polycom-realpresence" do
  version "3.10.4.72927"
  sha256 "5945aded85e88325b4e7930aaaa30b7371188190da61d4d55e682646db2018b2"

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDesktop_#{version.dots_to_underscores}.dmg"
  appcast "https://support.polycom.com/content/support/north-america/usa/en/support/video/realpresence-desktop/realpresence-desktop.html",
          must_contain: version.dots_to_underscores
  name "Polycom RealPresence Desktop"
  homepage "https://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html"

  pkg "RealPresenceDesktop.pkg"

  uninstall pkgutil: "com.polycom.RealPresenceDesktop"
end
