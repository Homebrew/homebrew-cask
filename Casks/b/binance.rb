cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.0.2"
  sha256 arm:   "ebae9f0661a1d577f3c2880f87a99f84a01e8ede3b375c4d635f1d1f14eb33db",
         intel: "5f4f03e11a4547279825db2db751c9a36a7c938346ff2cca666bcdef12452fa5"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Logs/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
