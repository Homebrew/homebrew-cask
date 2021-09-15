cask "qgis" do
  version "3.20.3,20210911_154600"
  sha256 "725ee98700812a0cce2376828ff1470c7ebfd041f550dd71b2cf2188cae95cc4"

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
