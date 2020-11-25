cask "qgis" do
  version "3.16.1"
  sha256 "d9ebc0394ab9ceabce1cec64244484eff14dad0873d60970c57bac3738e299b9"

  url "https://qgis.org/downloads/macos/qgis-macos-pr.dmg"
  appcast "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum",
          must_contain: version.dots_to_underscores
  name "QGIS"
  desc "Free and open source Geographic Information System"
  homepage "https://www.qgis.org/"

  app "QGIS.app"
end
