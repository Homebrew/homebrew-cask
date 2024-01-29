cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.50.1"
  sha256  arm:   "4f4707f37e8b1f14781863660b17ac2ecb0906345a6d29804505e494605a7b5c",
          intel: "100075b6b4a700aa914e2306532f28bddff72c19e87ca3d456c7da57050636e0"

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
