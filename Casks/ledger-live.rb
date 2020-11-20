cask "ledger-live" do
  version "2.17.0"
  sha256 "e869c137bcde279e2760bf3b2fb70487719c784f9b52cc92af0785bd218b292c"

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
