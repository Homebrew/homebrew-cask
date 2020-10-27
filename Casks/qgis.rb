cask "qgis" do
  version "3.16.0"
  sha256 "9d19d1161ddbac7d4e1a26bf8363f547c76f104573fa0e00510492cbd0c6795e"

  url "https://qgis.org/downloads/macos/qgis-macos-pr.dmg"
  appcast "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum",
          must_contain: version.dots_to_underscores
  name "QGIS"
  desc "Free and Open Source Geographic Information System"
  homepage "https://www.qgis.org/"

  app "QGIS#{version.major_minor}.app"
end
