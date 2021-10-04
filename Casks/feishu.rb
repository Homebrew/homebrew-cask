cask "feishu" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "4.9.6,4535a6,53c059"

  url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.split(",")[1]}/Feishu-darwin_#{arch}-#{version.split(",")[0]}-signed.dmg",
      verified: "sf3-cn.feishucdn.com/"
  if Hardware::CPU.intel?
    sha256 "568c45bf46fd2c28c9047ffc30fe8760f1b59df01643695bc31d03142bca56f3"
  else
    sha256 "f69b9a1748f6fdfdb9cc329c45ca0cf4cfb0168517579d7c3c03baefd7283f60"
  end

  name "feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

  livecheck do
    url "https://www.feishu.cn/api/downloads"
    strategy :page_match do |page|
      arm_match = page.match(%r{/(\h+)/Feishu-darwin_arm64-(\d+(?:\.\d+)*)-signed\.dmg}i)
      intel_match = page.match(%r{/(\h+)/Feishu-darwin_x64-(\d+(?:\.\d+)*)-signed\.dmg}i)
      "#{arm_match[2]},#{intel_match[1]},#{arm_match[1]}"
    end
  end

  auto_updates true

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Lark.app", target: "Feishu.app"

  zap trash: [
    # feishu
    "~/Library/Caches/com.bytedance.lark.helper",
    "~/Library/Preferences/com.bytedance.lark.helper.plist",
    # lark
    "~/Library/Caches/com.electron.lark.helper",
    "~/Library/Preferences/com.electron.lark.helper.plist",
    # both
    "~/Library/Caches/com.electron.lark",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
