cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "3671790022117d6cd584fc70c3d55b15ea78759c4ff3819cf22ab7c05878981a",
         intel: "d3e08d860b81bb5003d0621f40c2e550c9ebf39f5dae3c61d89b9c685e33e784"

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
