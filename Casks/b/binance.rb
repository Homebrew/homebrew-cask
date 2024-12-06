cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.5"
  sha256  arm:   "579aaee3c4f6ca45da996d2e8c9a1a7bef1e2108166117759310db3571caec9b",
          intel: "deb8a0771470c8fb05aa4524fdf8f19b782f19fd1cbfdd949d757e0b8a8730dd"

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
