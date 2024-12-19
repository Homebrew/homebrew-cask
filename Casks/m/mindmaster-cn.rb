cask "mindmaster-cn" do
  version "12.1.6"
  sha256 :no_check

  url "https://cc-download.edrawsoft.cn/cbs_down/mindmaster_cn_full5379.dmg"
  name "MindMaster"
  name "亿图脑图MindMaster"
  desc "Mind mapping software"
  homepage "https://www.edrawsoft.cn/mindmaster/"

  livecheck do
    url :url
    strategy :extract_plist do |item|
      item["com.edrawsoft.mindmaster"]&.short_version
    end
  end

  app "亿图脑图MindMaster.app"

  caveats do
    requires_rosetta
  end

  # No zap stanza required
end
