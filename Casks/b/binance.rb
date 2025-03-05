cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.16"
  sha256  arm:   "9df3cc295dd28da689612cf1649cfe06a7919855ba96f0e58a8f6e5865ac74d2",
          intel: "346dbfff117fb618a092c153e19fee1d8cb822af535074d574fcfcfcec3b0136"

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
