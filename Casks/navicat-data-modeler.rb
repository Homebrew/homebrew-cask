cask "navicat-data-modeler" do
  version "3.0.15"
  sha256 :no_check

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  name "Navicat Data Modeler"
  homepage "https://www.navicat.com/products/navicat-data-modeler"

  livecheck do
    url "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler"
    strategy :sparkle
  end

  app "Navicat Data Modeler.app"
end
