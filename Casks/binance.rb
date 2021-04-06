cask "binance" do
  version "1.12.0"
  sha256 "3f61a93206ef84fd94b116c6a86142dd00ff23cb8cfb0e6f12fc2df9dfcfe484"

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
