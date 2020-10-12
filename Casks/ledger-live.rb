cask "ledger-live" do
  version "2.14.0"
  sha256 "5cdd9d892fac7e6b16e8a0c23a208c7013769d5ba9c251053b25c81404da28a7"

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
