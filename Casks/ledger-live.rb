cask "ledger-live" do
  version "2.21.3"
  sha256 "7b3ba82ed9a87599e49eef9c42903db5078fdaefc6bfb7ad8acdb0e71dcaf510"

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
