cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.48.1"
  sha256  arm:   "22f08dd6b019eba29a9ef32d1cccb9bf893d7f83c1051346e56c95809273aadf",
          intel: "b1fc88670e53c1225859e31346aa19556674daa6becda41d78be59a2293f8690"

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
