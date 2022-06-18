cask "qgis" do
  version "3.26.0,20220617_164831"
  sha256 "ba77c142d16b61d3e8a5cc7c6318d8163136a5f3ad4175b2e5cb22e8ee061855"

  url "https://qgis.org/downloads/macos/pr/qgis_pr_final-#{version.csv.first.dots_to_underscores}_#{version.csv.second}.dmg"
  name "QGIS"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum"
    strategy :page_match do |page|
      match = page.match(/qgis_pr_final[._-]v?(\d+(?:_\d+)+)[._-](\d+_\d+)\.dmg/i)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  app "QGIS.app"

  zap trash: [
    "~/Library/Application Support/QGIS",
    "~/Library/Caches/QGIS",
    "~/Library/Saved Application State/org.qgis.qgis*.savedState",
  ]
end
