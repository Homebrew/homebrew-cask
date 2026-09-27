cask "tickernotch" do
  version "1.10.0"
  sha256 "0349764d6bab8ef5ed91f60d074157d016c3a2d8a1dc6208686cf0ef97d2ca5c"

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
