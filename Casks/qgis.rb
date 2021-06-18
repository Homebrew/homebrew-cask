cask "qgis" do
  version "3.18.3,20210608_104042"
  sha256 "b8b2fc7496716d87886f86762b9a0ebd5e3afef68e029d53338a406f83b1f895"

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
