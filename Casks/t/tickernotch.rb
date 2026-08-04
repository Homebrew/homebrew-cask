cask "tickernotch" do
  version "1.7.3"
  sha256 "46709ccc3845769e5f95676c59517b9d95aa0b0b49e34adb923d876595eac850"

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
    "~/Library/HTTPStorages/com.bitvibelabs.tickernotch.binarycookies",
    "~/Library/Logs/TickerNotch",
    "~/Library/Preferences/com.bitvibelabs.tickernotch.plist",
    "~/Library/WebKit/com.bitvibelabs.tickernotch",
  ]
end
