cask "mindmaster-cn" do
  version "12.1.2,5379"
  sha256 "02ba1da906de8235ee564dad2e10f339ff0230b1b09ac0eae8841e3c6fb51501"

  url "https://cc-download.edrawsoft.cn/cbs_down/mindmaster_cn_#{version.csv.first}_full#{version.csv.second}.zip"
  name "MindMaster"
  name "亿图脑图MindMaster"
  desc "Mind mapping software"
  homepage "https://www.edrawsoft.cn/mindmaster/"

  livecheck do
    url "https://www.edrawsoft.cn/download/"
    regex(/href=.*?mindmaster[._-]cn[._-]full(\d+)\.dmg.*?版本v?(\d+(?:\.\d+)+)/im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "MindMaster.app"

  caveats do
    requires_rosetta
  end

  # No zap stanza required
end
