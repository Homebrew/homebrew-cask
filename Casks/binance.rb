cask "binance" do
  version "1.9.1"
  sha256 "1293121cfc5cccbbf287db470902af57494e3ff145c6e2cd5994ae12beb97c96"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}.dmg"
  appcast "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "http://binance.com/"

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
    "~/Library/Logs/Binance",
  ]
end
