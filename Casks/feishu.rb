cask "feishu" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  if Hardware::CPU.intel?
    version "5.0.9,28b420"
    sha256 "7b25094338f0bf000f8751038a457bc8586dc35738b286b611c4f2ad21063ff2"
  else
    version "5.0.9,fd8d60"
    sha256 "f3a4711ddf7c95c63c3ec45842c7726856da4ac6619653a7bbd9f62644711b38"
  end

  url "https://sf3-cn.feishucdn.com/obj/ee-appcenter/#{version.after_comma}/Feishu-darwin_#{arch}-#{version.before_comma}-signed.dmg",
      verified: "sf3-cn.feishucdn.com/"
  name "feishu"
  desc "Project management software"
  homepage "https://www.feishu.cn/"

  livecheck do
    url "https://www.feishu.cn/api/downloads"
    regex(%r{/(\h+)/Feishu-darwin_#{arch}[._-]v?(\d+(?:\.\d+)*)-signed\.dmg}i)
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
