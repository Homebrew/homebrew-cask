cask "binance" do
  version "1.18.0"
  sha256 "7cc2342f5ed750f781d731b499fceccfd7abaa16d2ad7d223ed244ee6a63e2ca"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "http://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
    "~/Library/Logs/Binance",
  ]
end
