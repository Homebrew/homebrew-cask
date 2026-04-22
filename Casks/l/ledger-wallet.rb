cask "ledger-wallet" do
  version "4.2.0"
  sha256 "8634bf9bd0e31ba508bb694b0cc7e5e276f32dd153cb5e1774264b3f50f69b3c"

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
