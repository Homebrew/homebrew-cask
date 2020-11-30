cask "qgis-ltr" do
  version "3.10.12"
  sha256 "dcc63ad7beb08dde9bfe9ff702ca3fc9c70fc8ae34971a7d26659e96ed90f243"

  url "https://qgis.org/downloads/macos/qgis-macos-ltr.dmg"
  appcast "https://qgis.org/downloads/macos/qgis-macos-ltr.sha256sum"
  name "QGIS LTR"
  desc "Free and open source Geographic Information System"
  homepage "https://www.qgis.org/"

  app "QGIS#{version.major_minor}.app"
end
