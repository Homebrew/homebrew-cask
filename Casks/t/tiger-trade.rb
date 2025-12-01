cask "tiger-trade" do
  version "9.13.2"
  sha256 "a1982655f7e75343062a50fb747a503675420af23f81fe254a02d5ce8d04a69f"

  url "https://download.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version}.dmg",
      verified: "download.tigerfintech.com/"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.tigerbrokers.com.sg/download/"

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
