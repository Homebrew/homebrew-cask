cask "polycom-realpresence" do
  version "3.11.2.73443"
  sha256 "1724c702fe7424846da5e1052ed9465908888324018e52d048be007e77611b26"

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDesktop_#{version.dots_to_underscores}.dmg"
  name "Polycom RealPresence Desktop"
  homepage "https://www.polycom.com/products-services/hd-telepresence-video-conferencing/realpresence-desktop/realpresence-desktop.html"

  livecheck do
    url "https://support.polycom.com/content/support/north-america/usa/en/support/video/realpresence-desktop/realpresence-desktop.html"
    strategy :page_match do |page|
      v = page[%r{href=.*?/RPDesktop_(\d+(?:_\d+)*)\.dmg}i, 1]
      v.tr("_", ".")
    end
  end

  pkg "RealPresenceDesktop.pkg"

  uninstall pkgutil: "com.polycom.RealPresenceDesktop"
end
