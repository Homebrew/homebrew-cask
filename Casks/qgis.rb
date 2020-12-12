cask "qgis" do
  version "3.16.1"
  sha256 :no_check

  url "https://qgis.org/downloads/macos/qgis-macos-pr.dmg"
  appcast "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum",
          must_contain: version.dots_to_underscores
  name "QGIS"
  desc "Free and open source Geographic Information System"
  homepage "https://www.qgis.org/"

  app "QGIS.app"
end
