cask "navicat-data-modeler-essentials" do
  version "3.0.14"
  sha256 "d0e7bcce415607ce2a556e6292e9983b3dbf82a4891d1e7586c73c637739d66b"

  url "https://download3.navicat.com/updater/modeler0#{version.major_minor.no_dots}_ess_mac_en.zip"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler%20Essentials"
  name "Navicat Data Modeler Essentials"
  homepage "https://www.navicat.com/en/products/navicat-data-modeler"

  depends_on macos: ">= :yosemite"

  app "Navicat Data Modeler Essentials.app"
end
