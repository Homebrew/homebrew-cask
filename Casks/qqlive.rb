cask "qqlive" do
  version "2.37.1.53187"
  sha256 "87a48111b1b535d8028cf03335bef0d247253f898108eacca50e7d37ea88b4b1"

  url "https://dldir1.qq.com/qqtv/mac/QQLive_distribute_universal_#{version}.dmg"
  name "QQLive"
  name "TencentVideo"
  name "腾讯视频"
  desc "Tencent video streaming and sharing platform"
  homepage "https://v.qq.com/download.html#mac"

  livecheck do
    url :homepage
    regex(%r{href=.*/QQLive_distribute_universal_(\d+(?:\.\d+)+)\.dmg}i)
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
