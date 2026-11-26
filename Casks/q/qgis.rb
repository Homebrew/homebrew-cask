cask "qgis" do
  version "4.4.0"
  sha256 "0c87c163ab6d797479fc13957b0ecc80a3a5f78da99da2bd1219368f480a51cb"

  archive_version = version.dots_to_underscores.csv.join("_")
  url "https://download.qgis.org/downloads/macos/pr/qgis_pr_final-#{archive_version}.dmg"
  name "QGIS"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://www.qgis.org/downloads-list/#macos/pr"
    regex(/qgis[._-]pr[._-]final[._-]v?(\d+(?:[._]\d+)+?)(?:[._-](\d{6,8}(?:[._-]\d+)?))?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[0] = match[0].tr("_", ".")
        match.compact.join(",")
      end
    end
  end

  depends_on :macos

  app "QGIS-final-#{version.dots_to_underscores}.app"

  zap trash: [
    "~/Library/Application Support/QGIS",
    "~/Library/Caches/QGIS",
    "~/Library/Saved Application State/org.qgis.qgis*.savedState",
  ]
end
