cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.17"
  sha256 arm:   "52f09acf45fa84d565c724276fb679739aecc04c2c7c8c707779b09ec5b26632",
         intel: "4faf46fc576d89a2c6ac797a8486b9a7e7a01b7e402034dc9a1253bb279f0bdc"

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
