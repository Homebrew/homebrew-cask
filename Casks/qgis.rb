cask "qgis" do
  version "3.14.15"
  sha256 "1ab561993debb32ceb22c1c92e29b17046935f9aa88dd792ef41fd55548af03e"

  url "https://qgis.org/downloads/macos/qgis-macos-pr.dmg"
  appcast "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum",
          must_contain: version.dots_to_underscores
  name "QGIS"
  desc "Free and Open Source Geographic Information System"
  homepage "https://www.qgis.org/"

  app "QGIS#{version.major_minor}.app"
end
