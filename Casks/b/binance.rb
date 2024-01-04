cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.49.0"
  sha256  arm:   "7b6997d3b42b5564bb22b8f6a8deb50cf49d254d39de31b33c222aceed4eb264",
          intel: "a4aed595525dbb4c9ee7bced11a8818e7512daa4155bc8f0caec26dc34424431"

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
