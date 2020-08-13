cask "navicat-data-modeler" do
  version "3.0.12"
  sha256 "eaf79507fd446c37c2987ef6751cd0a58a4c48edbd5c2eeb2bdd0d794e983ae7"

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast "https://navicat.com/en/products/navicat-data-modeler-release-note"
  name "Navicat Data Modeler"
  homepage "https://www.navicat.com/products/navicat-data-modeler"

  app "Navicat Data Modeler.app"
end
