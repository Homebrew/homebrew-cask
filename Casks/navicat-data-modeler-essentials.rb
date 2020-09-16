cask "navicat-data-modeler-essentials" do
  version "3.0.13"
  sha256 "5ba54b21c56da6d5904140c8c7e98c6f4c49eb81731740cc89e52468b2f0a21c"

  url "http://download3.navicat.com/updater/modeler0#{version.major_minor.no_dots}_ess_mac_en.zip"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler%20Essentials"
  name "Navicat Data Modeler Essentials"
  homepage "https://www.navicat.com/en/products/navicat-data-modeler"

  depends_on macos: ">= :yosemite"

  app "Navicat Data Modeler Essentials.app"
end
