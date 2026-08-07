cask "tickernotch" do
  version "1.8.1"
  sha256 "faebd7f7cfa01655171ab9110a584c11643d62cc40581fef14568e33821d98c3"

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
