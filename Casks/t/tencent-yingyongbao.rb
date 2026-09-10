cask "tencent-yingyongbao" do
  version "0.7.9,2112"
  sha256 "2dc719ec4c6207156513573336dc822b4bfe26ee63fc3491dfe1c9bba10ef788"

  url "https://downmac.yyb.qq.com/channel/formal/raw/hJBBfZun3iTPqCMe/mac_yyb_#{version.csv.first}.2122.dmg?response-content-disposition=attachment%3Bfilename%3Dmacyyb_2102200000_8e8ca99bf44b44ff.dmg"
  name "腾讯应用宝"
  desc "Tencent application store"
  homepage "https://sj.qq.com/download/macbrand"

  livecheck do
    skip "No reliable automated version detection available"
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "YYBMacApp.app"

  zap trash: [
    "~/Library/Application Support/com.tencent.yybmac",
    "~/Library/Application Support/com.tencent.yybmac.engine",
    "~/Library/Application Support/com.tencent.yybmac.wine.engine",
    "~/Library/Logs/com.tencent.yybmac",
  ]
end
