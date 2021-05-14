cask "polycom-realpresence" do
  version "3.11.3.73575"
  sha256 "5aeb338abc6def5ecd98aa6a2a2f5e8d5fe4e0adaefd55650361641bd2426242"

  url "https://downloads.polycom.com/video/realpresence_desktop/RPDesktop_#{version.dots_to_underscores}.dmg"
  name "Polycom RealPresence Desktop"
  desc "Video collaboration app"
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
