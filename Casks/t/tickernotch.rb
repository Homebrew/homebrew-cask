cask "tickernotch" do
  version "1.3.0"
  sha256 "a4e8db3287ea4dd53deb98c167940e58b77a154a8bdd1787d85bb949aa70e1c7"

  url "https://bitvibelabs.com/tickernotch/TickerNotch-v#{version}.dmg"
  name "TickerNotch"
  desc "Tickers, news, weather and social counters beside the notch or in the menu bar"
  homepage "https://bitvibelabs.com/tickernotch/"

  livecheck do
    url "https://bitvibelabs.com/tickernotch/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TickerNotch.app"

  zap trash: [
    "~/Library/Caches/com.bitvibelabs.tickernotch",
    "~/Library/HTTPStorages/com.bitvibelabs.tickernotch",
    "~/Library/Preferences/com.bitvibelabs.tickernotch.plist",
  ]
end
