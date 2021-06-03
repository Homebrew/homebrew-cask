cask "binance" do
  version "1.17.1"
  sha256 "6e171275ec6e5e6d9b2ce3fc541e221eb8f168758f96e3f10f7a59a6c2768c3e"

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
