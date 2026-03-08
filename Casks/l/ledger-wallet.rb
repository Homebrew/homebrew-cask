cask "ledger-wallet" do
  version "2.143.0"
  sha256 "2676522e2cd686f9c7a202961856365bc029a61e5e58628c31841d09720ac2cf"

  url "https://download.live.ledger.com/ledger-live-desktop-#{version}-mac.dmg"
  name "Ledger Wallet"
  desc "Wallet desktop application to maintain multiple cryptocurrencies"
  homepage "https://shop.ledger.com/pages/ledger-wallet"

  livecheck do
    url "https://download.live.ledger.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Ledger Wallet.app"

  uninstall quit: [
    "com.ledger.live",
    "com.ledger.live.helper",
  ]

  zap trash: [
    "~/Library/Application Support/Ledger Wallet",
    "~/Library/Preferences/com.ledger.live.plist",
    "~/Library/Saved Application State/com.ledger.live.savedState",
  ]
end
