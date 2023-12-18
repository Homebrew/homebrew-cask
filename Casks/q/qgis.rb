cask "qgis" do
  version "3.34.1,20231124_122843"
  sha256 "47d1afcc319d265678303bb854ec46524137afaeaeb3c8631999a099affa95ec"

  url "https://qgis.org/downloads/macos/pr/qgis_pr_final-#{version.csv.first.dots_to_underscores}_#{version.csv.second}.dmg"
  name "QGIS"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://download.qgis.org/downloads/macos/qgis-macos-pr.sha256sum"
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
