cask "qgis" do
  version "3.18.1"
  sha256 :no_check

  url "https://qgis.org/downloads/macos/qgis-macos-pr.dmg"
  name "QGIS"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum"
    strategy :page_match do |page|
      v = page[/qgis_pr_final-(\d+(?:_\d{,3})*)(?:_\d+)*\.dmg/i, 1]
      v.tr("_", ".")
    end
  end

  app "QGIS.app"
end
