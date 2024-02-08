cask "navicat-data-modeler" do
  version "3.1.4"
  sha256 :no_check

  url "https://download3.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  name "Navicat Data Modeler"
  desc "Database design tool"
  homepage "https://www.navicat.com/products/navicat-data-modeler"

  livecheck do
    url "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler&appLang=en"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Navicat Data Modeler.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat Data Modeler",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Data Modeler Help*",
    "~/Library/Preferences/com.prect.NavicatDataModeler#{version.major}.plist",
    "~/Library/Saved Application State/com.prect.NavicatDataModeler#{version.major}.savedState",
  ]
end
