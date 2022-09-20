cask "ledger-live" do
  version "2.47.0"
  sha256 "0a651de966f0a0b5578640e95c2aa636dc1d19ac9df88b6c32f9891c3f82fa32"

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
