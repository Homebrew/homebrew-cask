cask "qgis" do
  version "3.28.2,20221216_124853"
  sha256 "8254cd00f8f2deb35661df28037b59fd86124b738a72c0239ef216ec918f516d"

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
