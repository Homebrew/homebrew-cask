cask "binance" do
  version "1.8.0"
  sha256 "463584de0d7360c0de504f9066488af6c5ea232d8b073792b7e3956b2074d3c8"

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
