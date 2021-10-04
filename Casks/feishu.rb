cask "feishu" do
  if Hardware::CPU.intel?
    version "4.9.5,94e92c"
    sha256 "c0d817204c632ce6233b7f2594136b19002410322e5cff98b12e1b63682af57b"

    url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.after_comma}/Feishu-darwin_x64-#{version.before_comma}-signed.dmg",
        verified: "sf3-cn.feishucdn.com/"

    livecheck do
      url "https://www.feishu.cn/api/downloads"
      strategy :page_match do |page|
        match = page.match(%r{/(\h+)/Feishu-darwin_x64-(\d+(?:\.\d+)*)-signed\.dmg}i)
        "#{match[2]},#{match[1]}"
      end
    end
  else
    version "4.9.6,53c059"
    sha256 "f69b9a1748f6fdfdb9cc329c45ca0cf4cfb0168517579d7c3c03baefd7283f60"

    url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.after_comma}/Feishu-darwin_arm64-#{version.before_comma}-signed.dmg",
        verified: "sf3-cn.feishucdn.com/"

    livecheck do
      url "https://www.feishu.cn/api/downloads"
      strategy :page_match do |page|
        match = page.match(%r{/(\h+)/Feishu-darwin_arm64-(\d+(?:\.\d+)*)-signed\.dmg}i)
        "#{match[2]},#{match[1]}"
      end
    end
  end

  name "feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

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
