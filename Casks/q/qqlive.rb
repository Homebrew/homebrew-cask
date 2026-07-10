cask "qqlive" do
  version "2.175.0.55797"
  sha256 "55b4693a3382021a1f066fd2c1c30a409edbb8d9372561e80e182220539bff15"

  url "https://dldir1.qq.com/qqtv/mac/TencentVideo#{version}.dmg"
  name "QQLive"
  name "TencentVideo"
  name "腾讯视频"
  desc "Tencent video streaming and sharing platform"
  homepage "https://v.qq.com/download.html#mac"

  livecheck do
    url "https://cache.wuji.qq.com/x/api/wuji_cache/object?appid=vqqcom&schemaid=downloadpage_config&schemakey=5dbbd3491a7342ad9bd2ed9bc098484a&filter=isShow%3Dtrue"
    regex(/TencentVideo[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      json["data"]&.filter_map do |item|
        item["downloadLink"]&.[](regex, 1)
      end
    end
  end

  auto_updates true
  depends_on :macos

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
