cask "feishu" do
  if Hardware::CPU.intel?
    version "4.7.11,360c5a"
    sha256 "a213ebc6710a16ac5cfc3ec5eb15ad0962bc974af31321e5c038f2b5821a5aa0"

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
    version "4.7.11,2ada29"
    sha256 "418112ab6f6a212dba63ead0ebae22a31217e7cc175deb9bb05e6701684c614e"

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
