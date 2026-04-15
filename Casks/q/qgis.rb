cask "qgis" do
  version "4.0.1"
  sha256 "93bbd704e678eabcfbf28132fd52839cbd365f8a48ef89bdd1ad5f23f0d4338a"

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

  depends_on macos: ">= :big_sur"

  app "QGIS-final-#{version.dots_to_underscores}.app"

  zap trash: [
    "~/Library/Application Support/QGIS",
    "~/Library/Caches/QGIS",
    "~/Library/Saved Application State/org.qgis.qgis*.savedState",
  ]
end
