cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.12"
  sha256  arm:   "86f73037a46cb2653fe65937884c2745cd22cfc14aa44ba28b5631be0509a163",
          intel: "4153bb1dd241bd9b8b5fff023e9b5467d338b8c461dd8ac5160ca03c68712682"

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
