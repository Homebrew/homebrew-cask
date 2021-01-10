cask "qqlive" do
  version "2.19.2.52840"
  sha256 "b967af1227ea2dc426c2e73fddf5c95df3f3df79615e10b8d624743ac227d9c9"

  url "https://dldir1.qq.com/qqtv/mac/TencentVideo_V#{version}.dmg"
  appcast "https://v.qq.com/biu/download#Mac"
  name "QQLive"
  name "TencentVideo"
  name "腾讯视频"
  desc "Tencent video streaming and sharing platform"
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
