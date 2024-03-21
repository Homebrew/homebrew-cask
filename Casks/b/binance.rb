cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.50.3"
  sha256  arm:   "2093a4557c4ec392e1f0d6a3d567ea28b47c055f324374a65fe2380b602b2736",
          intel: "216911f51ceadf1020941cc1efd5eb35561494d25ca3a5a6afcd95e9cf891aee"

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
