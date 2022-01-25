cask "navicat-data-modeler" do
  version "3.1.4"
  sha256 :no_check

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  name "Navicat Data Modeler"
  desc "Database design tool"
  homepage "https://www.navicat.com/products/navicat-data-modeler"

  livecheck do
    url "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler&appLang=en"
    strategy :sparkle
  end

  app "Navicat Data Modeler.app"
end
