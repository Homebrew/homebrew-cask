cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.50.2"
  sha256  arm:   "f8b5906c495d1502422e56ff296b4d5f577615ce8eb020284a0a7669c0586402",
          intel: "8513bd63520d14c51adbc3f68617cfbc11fcf556d37496d116f4764dbd224db0"

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
