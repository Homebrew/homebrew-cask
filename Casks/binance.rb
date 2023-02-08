cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.43.1"
  sha256  arm:   "04481a78760343634b10d51a394d1340f17ced20f8065c7c2f82f364963d7cac",
          intel: "d11484ae621a9f3d5820e1901f4b3913f5af5212d794b58d99bbda180edaf884"

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
