cask "tiger-trade" do
  version "9.6.2,6AFE09"
  sha256 "9e3aea6c0758e0169d0a4789dfabde75ea787dfa8d485125f6a97aac26b66d85"

  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.tr(",", "_")}.dmg",
      verified: "s.tigerfintech.com/"
  name "Tiger Trade"
  name "老虎证券"
  desc "Trading platform"
  homepage "https://www.tigerbrokers.com.sg/download/"

  livecheck do
    url "https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1"
    regex(/TigerTrade[._-]v?(\d+(?:\.\d+)+)[._-](\h+)\.dmg/i)
    strategy :json do |json, regex|
      match = json["downloadUrl"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Tiger Trade.app"

  zap trash: [
    "~/Library/Application Scripts/com.itiger.TigerTrade-Mac",
    "~/Library/Containers/com.itiger.TigerTrade-Mac",
  ]
end
