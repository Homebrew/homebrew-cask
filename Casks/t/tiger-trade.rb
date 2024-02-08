cask "tiger-trade" do
  version "8.20.2,13B362"
  sha256 "afd97fe79cd8fa59971448fbf633e070702d5ffe31a770b203e74cc9445f6f53"

  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.tr(",", "_")}.dmg",
      verified: "s.tigerfintech.com/"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.tigerbrokers.com.sg/download/"

  livecheck do
    url "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
    strategy :page_match do |page|
      match = page.match(/downloadUrl.*?TigerTrade[._-]v?(\d+(?:\.\d+)+)[._-](\h+).dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "Tiger Trade.app"

  zap trash: [
    "~/Library/Application Scripts/com.itiger.TigerTrade-Mac",
    "~/Library/Containers/com.itiger.TigerTrade-Mac",
  ]
end
