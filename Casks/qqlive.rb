cask "qqlive" do
  version "2.20.0.52955"
  sha256 "c3c08893dce4f8d4a89e159d2a8d79f68b695ffb288ef79ef3548ca832af14e2"

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
