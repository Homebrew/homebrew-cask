cask "qgis" do
  version "3.20.1,20210805_162007"
  sha256 "d4ab86e4c348bc88c59fd34b619a47a4e8d374300125548686cfcf809128e848"

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
