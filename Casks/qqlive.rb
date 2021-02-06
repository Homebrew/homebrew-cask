cask "qqlive" do
  version "2.19.3.52940"
  sha256 "f295cc698bd021a25615aa02e7ba6300812dce3a71d0d0e652454318b5bed660"

  url "https://dldir1.qq.com/qqtv/mac/TencentVideo_V#{version}.dmg"
  name "QQLive"
  name "TencentVideo"
  name "腾讯视频"
  desc "Tencent video streaming and sharing platform"
  homepage "https://v.qq.com/download.html#mac"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/TencentVideo_V(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "QQLive.app"

  zap trash: [
    "~/Library/Caches/com.tencent.tenvideo",
    "~/Library/Containers/com.tencent.tenvideo",
    "~/Library/Cookies/com.tencent.tenvideo.binarycookies",
    "~/Library/Logs/QQLive",
    "~/Library/Preferences/com.tencent.tenvideo.plist",
    "~/Library/Saved Application State/com.tencent.tenvideo.savedState",
    "~/Library/WebKit/com.tencent.tenvideo",
  ]
end
