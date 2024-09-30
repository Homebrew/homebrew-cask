cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.53.6"
  sha256  arm:   "c727da670572c82702d423161b71aba51dada1af87469b0679e4793adcaeb885",
          intel: "237fafa4bd5661f6fae401026ff195dc0463572fbf6351eb9f2e4d6e697e11b0"

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
