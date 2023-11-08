cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.48.4"
  sha256  arm:   "9ea1c3ec2f29e5ad6b79b86dd3a15f80290e97e9240066c338eb16b529cda604",
          intel: "0072c279122e2e7282b7d306b858b71b55677b4ffa24be21e85a74a5c3ba4d03"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Logs/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
