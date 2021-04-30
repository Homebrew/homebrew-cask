cask "feishu" do
  version "3.46.9,061e09"
  sha256 "c49a282d163f1ff7453819537551ef82cffca69c19bcefb41936a0524168b19a"

  url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.after_comma}/feishu-mac-#{version.before_comma}.dmg",
      verified: "sf3-cn.feishucdn.com/"
  name "feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

  livecheck do
    url "https://www.feishu.cn/api/downloads"
    strategy :page_match do |page|
      match = page.match(%r{sf3-cn\.feishucdn\.com/obj/ee-appcenter/(\w+)/feishu-mac-(\d+(?:\.\d+)*)\.dmg}i)
      "#{match[2]},#{match[1]}"
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
