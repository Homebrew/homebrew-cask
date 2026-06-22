cask "qqlive" do
  version "2.172.0.55740"
  sha256 "bf21c0a4569a2e6ef64f9654e1f29dcfcc0a5e26b35e3a796d15e26973931480"

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
