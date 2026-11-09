cask "qgis" do
  version "4.2.3"
  sha256 "cf3af3d3d228a0e2a0ab7fb6b37052ae78064d0aef93b12f41f9bd724fd23401"

  url "https://download.qgis.org/downloads/macos/pr/qgis_pr_final-#{version.dots_to_underscores.csv.join("_")}.dmg"
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
