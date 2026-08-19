cask "tiger-trade" do
  version "9.26.2"
  sha256 "ddf5578ba565b06404c4574c6a22181196d02e513e21b8a32d5aedeca0a6f6e0"

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
