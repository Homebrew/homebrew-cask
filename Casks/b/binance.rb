cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.7"
  sha256  arm:   "8e66055030d58528b0754a874f355055845af9f7bbad77c8e6101ff70a16bf86",
          intel: "799d43291edd121c1f310e475e4c9218828939fe1bebcdab4dcf093b0b360188"

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
