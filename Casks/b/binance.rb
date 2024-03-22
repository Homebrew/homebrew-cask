cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.50.4"
  sha256  arm:   "fb4229415ea144a9d805f79c4c5f9606203dfa8958a3191497c6fbfa4791dded",
          intel: "b25f812184dd2352c13ce7cfbce2daf46df9fa93334212c967b52dc21a4c6442"

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
