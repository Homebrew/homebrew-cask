cask "qqlive" do
  version "2.156.0.55442"
  sha256 "518793a91ad91aada49095a5ea255c0bc5abb38f10bbc86d8c2203fc016a3076"

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
