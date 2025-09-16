cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "9638a0f9707b41f66e9fbfb55c4381f4583523b610573a7aaf019f2cef19df98",
         intel: "c47f3b603163e0591288dc44009b542b7056ea658e713c42e72e304f7919bb2d"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Logs/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
