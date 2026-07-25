cask "qgis@ltr" do
  version "3.44.12"
  sha256 "41a2876a2d373215c9fdf3e85d791f71634983c9812f69b2fa5cfddce6529e47"

  url "https://download.qgis.org/downloads/macos/ltr/qgis_ltr_final-#{version.dots_to_underscores.csv.join("_")}.dmg"
  name "QGIS LTR"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://www.qgis.org/downloads-list/#macos/ltr"
    regex(/qgis[._-]ltr[._-]final[._-]v?(\d+(?:[._]\d+)+?)(?:[._-](\d{6,8}(?:[._-]\d+)?))?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[0] = match[0].tr("_", ".")
        match.compact.join(",")
      end
    end
  end

  depends_on macos: :big_sur

  # The application path can change between versions,
  # renaming also allows installation alongside the main "qgis" cask.
  rename "QGIS.app", "QGIS-LTR.app"

  app "QGIS-LTR.app"

  zap trash: [
    "~/Library/Application Support/QGIS",
    "~/Library/Caches/QGIS",
    "~/Library/Saved Application State/org.qgis.qgis*.savedState",
  ]
end
