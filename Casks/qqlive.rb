cask "qqlive" do
  version "2.18.0.52819"
  sha256 "3178d29231c439daa3c43e006a15b092ba62aa5d63276a604a295a42fc68c0ad"

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
