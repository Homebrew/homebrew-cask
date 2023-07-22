cask "ledger-live" do
  version "2.64.2"
  sha256 "d59904b64665a0a1c53350430558e1881d5819479aaac41972234079ad77dcdd"

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
