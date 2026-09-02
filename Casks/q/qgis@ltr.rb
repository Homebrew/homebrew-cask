cask "qgis@ltr" do
  version "3.44.14"
  sha256 "09942c5078bbb19416cd2339e47d16aed81390053fed9dec46028fd54b091422"

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
