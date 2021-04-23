cask "qgis" do
  version "3.18.2"
  sha256 :no_check

  url "https://qgis.org/downloads/macos/qgis-macos-pr.dmg"
  name "QGIS"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum"
    strategy :page_match
    regex(/Version:\s*(\d+(?:\.\d+)*)/i)
  end

  app "QGIS.app"
end
