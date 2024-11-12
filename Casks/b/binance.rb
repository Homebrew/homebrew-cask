cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.2"
  sha256  arm:   "1aa51877ff50031cf9e51beb2a2a43076ede0b50acec23f9bb42b5971107d154",
          intel: "8cf677154bd961d3344b40c03f5f070ed68cb957b113df477cd773b7b8ed557e"

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
