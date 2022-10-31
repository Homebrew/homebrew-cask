cask "feishu" do
  arch arm: "arm64", intel: "x64"

  on_intel do
    version "5.23.7,547c7bd7"
    sha256 "0071f1b2a287ad4b9b0a53440125a1c61ed84b29e005ec87ab655766dc6f01e5"
  end
  on_arm do
    version "5.23.7,0bf1707f"
    sha256 "080ce67e8e44aa73e987ea9142adec2dcd64de9a8850c40bb76970b2ab7e34b9"
  end

  url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.csv.second}/Feishu-darwin_#{arch}-#{version.csv.first}-signed.dmg",
      verified: "sf3-cn.feishucdn.com/"
  name "feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

  livecheck do
    url "https://www.feishu.cn/api/downloads"
    regex(%r{/(\h+)/Feishu[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[._-]signed\.dmg}i)
    strategy :page_match do |page|
      page.scan(regex)
          .map { |match| "#{match[1]},#{match[0]}" }
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
