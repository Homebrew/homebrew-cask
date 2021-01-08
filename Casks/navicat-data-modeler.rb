cask "navicat-data-modeler" do
  version "3.0.15"
  sha256 "05fefb0d7474b2ed235604f236dac3e78ae83c9122f6b38390f0762379c08b06"

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast "https://navicat.com/en/products/navicat-data-modeler-release-note"
  name "Navicat Data Modeler"
  homepage "https://www.navicat.com/products/navicat-data-modeler"

  app "Navicat Data Modeler.app"
end
