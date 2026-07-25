cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "19564f74e7d9d6cacd326d0ba2b64cef8aa24d47d78bdf3bd44bd513730919b8",
         intel: "d73150f16da3b465610cc95ee1cbca40c2d7a5e29ec22f1a79c43e7376535045"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Logs/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
