cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.8"
  sha256  arm:   "33fa0fa4f36cfc3bff54d0ad62dc8cb2ef17b993784b325b9041c8767e64bb91",
          intel: "e2f0d5ebe338492449209381a3c6dd39e04a7e8b2e884439daa688d018c03f61"

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
