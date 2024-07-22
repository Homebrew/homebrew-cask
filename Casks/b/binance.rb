cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.52.11"
  sha256  arm:   "1b18327a7188e48b02c48941f55c3f09c3e4f620e3c84afb65581d62b0cf1724",
          intel: "b940e7fb724d9fc4d6d57923aa0e5664d48088fa9d2e5d72bcf67f6171182e7f"

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
