cask "ledger-live" do
  version "2.26.1"
  sha256 "290e357f3cb69ff3c07e7ea52263b51dad8e829c0f237a9dc0c164dc684de272"

  url "https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v#{version}/ledger-live-desktop-#{version}-mac.dmg",
      verified: "github.com/LedgerHQ/ledger-live-desktop/"
  name "Ledger Live"
  desc "Wallet desktop application to maintain multiple cryptocurrencies"
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
