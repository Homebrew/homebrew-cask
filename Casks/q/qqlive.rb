cask "qqlive" do
  version "2.158.0.55481"
  sha256 "f0162d8e96871258f07aed804d18df932c5a572cf3dccdb20b6c53437b1d06e8"

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
