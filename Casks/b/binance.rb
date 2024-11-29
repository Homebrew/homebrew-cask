cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.3"
  sha256  arm:   "ed4c6fa0b22836786fafefb0b5677d5ff6bbd16a45731a6a8335b42fdd619107",
          intel: "bc5166d25e9d226284e9b9aef7f5e0d619a7242942caa60490c792ddf133f33b"

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
