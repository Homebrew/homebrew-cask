cask "tiger-trade" do
  version "9.15.3"
  sha256 "9a0a89b22f29d33c9e29f0620ef1570d2443f7fda613411f88c1c4aa402b8b18"

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

  app "Tiger Trade.app"

  zap trash: [
    "~/Library/Application Scripts/com.itiger.TigerTrade-Mac",
    "~/Library/Containers/com.itiger.TigerTrade-Mac",
  ]
end
