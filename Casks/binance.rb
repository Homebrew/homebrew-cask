cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.41.0"
  sha256  arm:   "233481040e549f1480a65ff54cb09e436df5023ff6b09dcb222f1dc4e6b87ac7",
          intel: "6da4a279d4fbccc29f84c0df2cd356a9b432f8f4b73439e3aaaa03cb64893729"

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
