cask "qqlive" do
  version "2.180.0.55826"
  sha256 "b6b2ea1384745d7cad4c65d4f5e6d726fc4e99447a0f2f0d2e644871fbfdf58d"

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

  uninstall quit: "com.tencent.tenvideo"

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
