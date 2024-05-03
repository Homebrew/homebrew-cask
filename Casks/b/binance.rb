cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.52.1"
  sha256  arm:   "92a0a9581efdf8bad54b19bd47e38845ee38cf52fa5ab5d9793d326e04794718",
          intel: "70f97f7a4a7be60affb8b2aacfa49e12bf7369d134b86bce7aa466a956ea7b20"

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
