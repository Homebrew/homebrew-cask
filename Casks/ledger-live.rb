cask "ledger-live" do
  version "2.30.0"
  sha256 "637c2eee8d96f2c82140a85008440b7692fc9e78700db63b94774ec6852792ee"

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
