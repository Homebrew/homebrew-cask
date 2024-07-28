cask "navicat-data-modeler-essentials" do
  version "3.1.4"
  sha256 :no_check

  url "https://download3.navicat.com/updater/modeler0#{version.major_minor.no_dots}_ess_mac_en.zip"
  name "Navicat Data Modeler Essentials"
  desc "Database design tool"
  homepage "https://www.navicat.com/products/navicat-data-modeler"

  livecheck do
    cask "navicat-data-modeler"
  end

  depends_on macos: ">= :mojave"

  app "Navicat Data Modeler Essentials.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Data Modeler Help*#{version}",
    "~/Library/Preferences/com.prect.NavicatDataModelerEssentials#{version.major}.plist",
    "~/Library/Saved Application State/com.prect.NavicatDataModelerEssentials#{version.major}.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
