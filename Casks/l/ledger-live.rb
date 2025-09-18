cask "ledger-live" do
  version "2.128.1"
  sha256 "dc5de07acfc7c2190cbbcc6f4b34a40a5f502c66b6c0a1bc3df57cc025ec563d"

  url "https://download.live.ledger.com/ledger-live-desktop-#{version}-mac.dmg"
  name "Ledger Live"
  desc "Wallet desktop application to maintain multiple cryptocurrencies"
  homepage "https://www.ledger.com/ledger-live"

  livecheck do
    url "https://download.live.ledger.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Ledger Live.app"

  uninstall quit: [
    "com.ledger.live",
    "com.ledger.live.helper",
  ]

  zap trash: [
    "~/Library/Application Support/Ledger Live",
    "~/Library/Preferences/com.ledger.live.plist",
    "~/Library/Saved Application State/com.ledger.live.savedState",
  ]
end
