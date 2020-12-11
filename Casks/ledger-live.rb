cask "ledger-live" do
  version "2.17.1"
  sha256 "9fb128d57458c2ac80844f2c2f01d1c505d626abf4afde1a54b68ced13d09f08"

  # github.com/LedgerHQ/ledger-live-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg"
  appcast "https://github.com/LedgerHQ/ledger-live-desktop/releases.atom"
  name "Ledger Live"
  homepage "https://www.ledgerwallet.com/live"

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
