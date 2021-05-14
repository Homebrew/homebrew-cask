cask "binance" do
  version "1.16.0"
  sha256 "3c8f1205d1daffeec4a2f778f410b0c670d118e64d51d0a9e6ed16fefb843cfb"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "http://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
    "~/Library/Logs/Binance",
  ]
end
