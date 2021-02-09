cask "ledger-live" do
  version "2.20.0"
  sha256 "78fee1620138c16ecb04b725ec502fbdac5a5fcf628e8ac286c5a4c6ff28191f"

  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg",
      verified: "github.com/LedgerHQ/ledger-live-desktop/"
  name "Ledger Live"
  homepage "https://www.ledgerwallet.com/live"

  livecheck do
    url :url
    strategy :github_latest
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
