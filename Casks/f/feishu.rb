cask "feishu" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.22.5,d8ec86cd"
    sha256 "5905264a65ebdbf9abcd6ca1f926632ece37fd3511a186e00defc14e1416720c"
  end
  on_intel do
    version "7.22.5,351bd8e9"
    sha256 "032d259babbc71f0c8194db1238ab325760c3130311dbe3e5ffa003d038e3dff"
  end

  url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.csv.second}/Feishu-darwin_#{arch}-#{version.csv.first}-signed.dmg",
      verified: "sf3-cn.feishucdn.com/obj/ee-appcenter/"
  name "Feishu"
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
    "~/Library/Caches/com.bytedance.lark.helper",
    "~/Library/Caches/com.electron.lark",
    "~/Library/Preferences/com.bytedance.lark.helper.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
