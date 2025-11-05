cask "ledger-wallet" do
  version "2.132.0"
  sha256 "af3442f8bac7a428ca3729508d53256386e0bec065518b42038387ca0a33e911"

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
