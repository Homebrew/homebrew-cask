cask "ledger-live" do
  version "2.19.0"
  sha256 "f7753a8b0d4882c7ef4c0943dea44e5249a4755d688336b6d6079e73a024fa8b"

  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg",
      verified: "github.com/LedgerHQ/ledger-live-desktop/"
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
