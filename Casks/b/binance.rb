cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "b69c093e610bccb1145ffae78b5ba7c7c7d8388f842d56b652740c3a1c8d426c",
         intel: "4d96fc6f8814ee824f7bc56d6c85d65232a35ea5f85b9bc59232e3b9b7621257"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Logs/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
