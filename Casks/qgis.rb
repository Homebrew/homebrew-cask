cask "qgis" do
  version "3.16.1"
  sha256 "ba27ee03f4800478d41ac3235087246d9e7873eb8fce4e4b027eaf4e7fe37f35"

  url "https://qgis.org/downloads/macos/qgis-macos-pr.dmg"
  appcast "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum",
          must_contain: version.dots_to_underscores
  name "QGIS"
  desc "Free and open source Geographic Information System"
  homepage "https://www.qgis.org/"

  app "QGIS.app"
end
