cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "2bb7e4c115a5bbef14c734f31ead811456e46a4863d3ec3303a66cb3e5c6e745",
         intel: "4890a7651cf52f45ee5a81f54db9dc4c7624d3418158031aba64cd956c969c0b"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.binance.binancedesktop.sfl*",
    "~/Library/Logs/Binance",
    "~/Library/Preferences/com.binance.BinanceDesktop.plist",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
