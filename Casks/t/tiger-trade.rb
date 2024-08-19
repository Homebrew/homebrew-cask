cask "tiger-trade" do
  version "8.29.3,7CFDBF"
  sha256 "adb7af92817de0d642e4eb0eb4979f671560700d8d2dfe8217ecbd78fd856ff8"

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
