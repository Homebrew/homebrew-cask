cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.4"
  sha256  arm:   "8bb606654822f07e1d9dd8d12d4692eaadd59caf3110843f6bffda5f7595cd19",
          intel: "58e97986d2403ff58a32d588c277b1ecd4216b2ecb5cada36a78915686346ee6"

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
