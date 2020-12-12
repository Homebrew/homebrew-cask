cask "qqlive" do
  version "2.19.1.52915"
  sha256 "23a7fc162d2fe2572f11e6d91c01912fd7a4a7d87377f8c9b7781b202874e353"

  url "https://dldir1.qq.com/qqtv/mac/TencentVideo_V#{version}.dmg"
  appcast "https://v.qq.com/biu/download#Mac"
  name "QQLive"
  name "腾讯视频"
  homepage "https://v.qq.com/download.html#mac"

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
