cask "navicat-data-modeler" do
  version "3.0.14"
  sha256 "e06cd68eb6a1a2e14f400ed5eeee3b15a22b3271e9c4d5a76f33ab3094872472"

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast "https://navicat.com/en/products/navicat-data-modeler-release-note"
  name "Navicat Data Modeler"
  homepage "https://www.navicat.com/products/navicat-data-modeler"

  app "Navicat Data Modeler.app"
end
