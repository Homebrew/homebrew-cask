cask "qgis" do
  version "3.40.1,20241123_122634"
  sha256 "a0a75dacb3b334143faea504cdd53ad73e123cb600f8544fb038a7bc7b967dd3"

  url "https://download.qgis.org/downloads/macos/pr/qgis_pr_final-#{version.csv.first.dots_to_underscores}_#{version.csv.second}.dmg"
  name "QGIS"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://download.qgis.org/downloads/macos/qgis-macos-pr.sha256sum"
    regex(/qgis_pr_final[._-]v?(\d+(?:_\d+)+)[._-](\d+_\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "QGIS.app"

  zap trash: [
    "~/Library/Application Support/QGIS",
    "~/Library/Caches/QGIS",
    "~/Library/Saved Application State/org.qgis.qgis*.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
