cask "binance" do
  version "1.7.1"
  sha256 "e2fb156088bbe40eecda16297d44cb3d0816b7be05f0585230c27805e2352fd6"

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
