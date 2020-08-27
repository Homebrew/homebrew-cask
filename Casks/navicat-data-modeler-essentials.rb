cask "navicat-data-modeler-essentials" do
  version "3.0.12"
  sha256 "ab70eb07c016c4145fedd96acc579d25ba13cde60ab65eaaf938b0b66c047cd3"

  url "http://download3.navicat.com/updater/modeler0#{version.major_minor.no_dots}_ess_mac_en.zip"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler%20Essentials"
  name "Navicat Data Modeler Essentials"
  homepage "https://www.navicat.com/en/products/navicat-data-modeler"

  depends_on macos: ">= :yosemite"

  app "Navicat Data Modeler Essentials.app"
end
