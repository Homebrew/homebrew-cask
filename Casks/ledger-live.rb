cask "ledger-live" do
  version "2.36.3"
  sha256 "b06a0c723b65d8f4f0da16546f01c1a972439ef34dca1622dc10a2111432bd03"

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
