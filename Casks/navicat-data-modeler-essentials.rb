cask "navicat-data-modeler-essentials" do
  version "3.0.15"
  sha256 :no_check

  url "https://download3.navicat.com/updater/modeler0#{version.major_minor.no_dots}_ess_mac_en.zip"
  name "Navicat Data Modeler Essentials"
  homepage "https://www.navicat.com/en/products/navicat-data-modeler"

  livecheck do
    url "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler%20Essentials"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  app "Navicat Data Modeler Essentials.app"
end
