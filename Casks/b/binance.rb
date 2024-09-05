cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.53.4"
  sha256  arm:   "c0cfddd493a680fdd35580d76854831c51c3e413f64ee21c0bff5d5fdc8a5b0e",
          intel: "aa0776725af3d94940fde803c8558404fc2e97435cc58c3d8b87d1e5e9424b29"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Logs/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
