cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.53.7"
  sha256  arm:   "4c6a8341c60a31c343925d2f7ec5375955b32638aab59ea3d786ac167fa2a65b",
          intel: "dc44095176d374c75c4df75b0570f2007fb6310ad66f9137a8c8e13addfadbda"

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
