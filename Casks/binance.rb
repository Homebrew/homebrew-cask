cask "binance" do
  version "1.18.1"
  sha256 "a31642d4445a851d9b8add07056c4bd59a3e70cf755365e667c493d2c3c9fdcf"

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
