cask "binance" do
  version "1.6.1"
  sha256 "c75fea82ccf6210a820b7bfc4b400f813e30cc13038241e40e845c5dbe7dee83"

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
