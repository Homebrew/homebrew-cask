cask "tiger-trade" do
  version "9.23.3"
  sha256 "326969ccf108eaefafe477ea447ac93f450cece803f2e01d669ccff7f7bb7b88"

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
    "~/Library/Containers/com.itiger.TigerTrade-Mac",
  ]
end
