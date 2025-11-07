cask "qqlive" do
  version "2.143.0.55310"
  sha256 "217e05fcbd4f2ddfb6e26fb37de89c85ea5324b6010ac9b5e86b5f4ec5185ffa"

  url "https://dldir1.qq.com/qqtv/mac/TencentVideo#{version}.dmg"
  name "QQLive"
  name "TencentVideo"
  name "腾讯视频"
  desc "Tencent video streaming and sharing platform"
  homepage "https://v.qq.com/download.html#mac"

  livecheck do
    url :homepage
    regex(%r{href=.*/TencentVideo(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

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
