cask "tiger-trade" do
  version "9.25.3"
  sha256 "c9054f9a01eb79df8044e350084c091b5415adb2d132416a5b967dc291cd57be"

  url "https://download.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version}.dmg",
      verified: "download.tigerfintech.com/"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.itiger.com/sg/download/"

  livecheck do
    url "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
    regex(/TigerTrade[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      json["downloadUrl"]&.[](regex, 1)
    end
  end

  depends_on :macos

  app "Tiger Trade.app"

  zap trash: [
    "~/Library/Application Scripts/com.itiger.TigerTrade-Mac",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.itiger.tigertrade-mac.sfl*",
    "~/Library/Containers/com.itiger.TigerTrade-Mac",
  ]
end
