cask "navicat-data-modeler" do
  version "3.0.13"
  sha256 "6c9feff2a221b6895c24ee84c8435c65949298504e1cf98184d64fcffc1d71bc"

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast "https://navicat.com/en/products/navicat-data-modeler-release-note"
  name "Navicat Data Modeler"
  homepage "https://www.navicat.com/products/navicat-data-modeler"

  app "Navicat Data Modeler.app"
end
