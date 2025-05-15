cask "mindmaster-cn" do
  version "12.2.18,5379"
  sha256 "020bbdf064b5bf5c42d2778cb9b6984643e45e7fcf2c656be4e2e3fb61435cbd"

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
