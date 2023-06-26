cask "ledger-live" do
  version "2.62.0"
  sha256 "a8eefaa06d277fa80eccce492c235b95a900d73548ad3e672d7cabe10574b492"

  url "https://download.live.ledger.com/ledger-live-desktop-#{version}-mac.dmg"
  name "Ledger Live"
  desc "Wallet desktop application to maintain multiple cryptocurrencies"
  homepage "https://www.ledger.com/ledger-live"

  livecheck do
    url "https://download.live.ledger.com/latest/mac"
    strategy :header_match
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
