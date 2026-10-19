cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "163bd384a9fe0e01525fdf97f4d53316e2acd423c8cf00276b16e5a7f8a9ab1d",
         intel: "a40b33242d1d2e34b86f0af53519f32f67b58e1163bfddb9b6a912b49c3a95cd"

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
