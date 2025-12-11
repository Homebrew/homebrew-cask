cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "d44f84827c45cb0b0d8a8fef38030dd1a213cfe4f5150afc209c524c29143fcd",
         intel: "b07f1163d6f7869525e1a1b45159b020e2f8d0cfa810d87bb6e0bde9d4b5239e"

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
