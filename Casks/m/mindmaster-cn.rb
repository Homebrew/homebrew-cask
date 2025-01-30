cask "mindmaster-cn" do
  version "12.2.3,5379"
  sha256 "b415c5fcb5ff026d106c06632ab87a9c1b966f55903fbc44948077b81385bf41"

  url "https://cc-download.edrawsoft.cn/mindmaster_cn_full#{version.csv.second}.dmg"
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

  app "亿图脑图MindMaster.app"

  caveats do
    requires_rosetta
  end

  # No zap stanza required
end
