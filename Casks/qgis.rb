cask "qgis" do
  version "3.20.2,20210813_152306"
  sha256 "913a911c13e63f15e000eebd9be4513ba7a286a45915256ce6f487409671f9f0"

  url "https://qgis.org/downloads/macos/pr/qgis_pr_final-#{version.before_comma.dots_to_underscores}_#{version.after_comma}.dmg"
  name "QGIS"
  desc "Geographic Information System"
  homepage "https://www.qgis.org/"

  livecheck do
    url "https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum"
    strategy :page_match do |page|
      match = page.match(/qgis_pr_final[._-]v?(\d+(?:_\d+)+)[._-](\d+_\d+)\.dmg/i)
      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  app "QGIS.app"
end
