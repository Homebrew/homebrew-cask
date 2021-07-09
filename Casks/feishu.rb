cask "feishu" do
  version "4.1.5,1fcc7d"
  sha256 "d3775a6e3e19f5c6690fb5a749eb4c546f8a05d0cb60fbce38efb3accdef56f2"

  url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.after_comma}/Feishu-darwin_x64-#{version.before_comma}-signed.dmg",
      verified: "sf3-cn.feishucdn.com/"
  name "feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

  livecheck do
    url "https://www.feishu.cn/api/downloads"
    strategy :page_match do |page|
      match = page.match(%r{/(\h+)/Feishu-darwin_x64-(\d+(?:\.\d+)*)-signed\.dmg}i)
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
