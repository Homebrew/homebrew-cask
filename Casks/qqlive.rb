cask "qqlive" do
  version "2.18.2.52825"
  sha256 "5d0b53ff0f95605c306326a531ffc5341842aa8231db8abc1491d3eadeb7b335"

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
