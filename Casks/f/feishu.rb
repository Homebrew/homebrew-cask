cask "feishu" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.21.6,b1bfa841"
    sha256 "f235ad1f29220ab0dd7da60cafd843b150e8bc3ed415c9359d9ca6d5f9b252da"
  end
  on_intel do
    version "7.21.6,6c03a76e"
    sha256 "3808a9ad2f7c6aba05bf95e284a7ca140e9f80efc1d19dd3fa0db8ca6a0dfc50"
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
