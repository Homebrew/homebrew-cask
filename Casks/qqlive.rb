cask "qqlive" do
  version "2.55.0.53481"
  sha256 "00326f5f9f20bff406ed647720adc1205e2ae0f96363a5e52f889fefa6ed6c81"

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
  depends_on macos: ">= :el_capitan"

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
