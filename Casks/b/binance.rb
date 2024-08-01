cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.53.0"
  sha256  arm:   "69ea7b43e1ae96a7c17b192353fd48250e2f7ada76bcd10f392715fcea0689f4",
          intel: "ad98a30c8de2a26535d88701ae7874200810b1ca3da7fff64acccb5ac97099b1"

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
