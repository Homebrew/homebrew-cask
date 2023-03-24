cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.44.0"
  sha256  arm:   "e1fa7263a2fe1318ea19834b43486075cde33946a5573dde755fcc7b3385dbfc",
          intel: "42778d4623087371a9ff4ab2ea63a24127b8169291593bb9c6f7c6470f3555ca"

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
