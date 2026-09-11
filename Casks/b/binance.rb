cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.5.2"
  sha256 arm:   "c4941332e3a2d4c79bd99e78292e0ecfad5ef1da075b63b8f9e8f8700d586bcd",
         intel: "65a65914da39e9246a75b5555d0176ba64939762b89ed88da811ef94aa273364"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.binance.binancedesktop.sfl*",
    "~/Library/Logs/Binance",
    "~/Library/Preferences/com.binance.BinanceDesktop.plist",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
