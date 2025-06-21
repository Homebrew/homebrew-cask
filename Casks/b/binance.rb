cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.19"
  sha256 arm:   "13c9357ab3346ebf79b696e9c80468bfd591c3e37f66484ed7a3b4f8d2a8accb",
         intel: "19a770b91778391b2aa25c60e1532cb268e9e61d47d5f01cf8473f9cb38d5ced"

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
