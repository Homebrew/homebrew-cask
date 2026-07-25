cask "tickernotch" do
  version "1.2.1"
  sha256 "1ac4e357841b12e05ed8c2604d0035a1f86bfa1a1c9dc1d7384715124ad59450"

  url "https://bitvibelabs.com/tickernotch/TickerNotch-v#{version}.dmg"
  name "TickerNotch"
  desc "Live tickers, news, weather and social counters beside the MacBook notch"
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
