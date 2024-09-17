cask "qgis@ltr" do
  version "3.34.11,20240913_170535"
  sha256 "445e8a6db0bcda562e8d559f9b2980348e9e254bbdaeca954f04e396e8a313d9"

  url "https://download.qgis.org/downloads/macos/ltr/qgis_ltr_final-#{version.csv.first.dots_to_underscores}_#{version.csv.second}.dmg"
  name "QGIS LTR"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://download.qgis.org/downloads/macos/qgis-macos-ltr.sha256sum"
    regex(/qgis_ltr_final[._-]v?(\d+(?:_\d+)+)[._-](\d+_\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  deprecate! date: "2025-05-01", because: :unsigned

  depends_on macos: ">= :high_sierra"

  app "QGIS-LTR.app"

  zap trash: [
    "~/Library/Application Support/QGIS",
    "~/Library/Caches/QGIS",
    "~/Library/Saved Application State/org.qgis.qgis*.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
