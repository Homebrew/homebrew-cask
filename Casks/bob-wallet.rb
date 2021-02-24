cask "bob-wallet" do
  version "0.6.2"
  sha256 "561939bea3931bc9fc1c057002e6bd0f755b0cd5a1427645cf37e2779427c592"

  url "https://github.com/kyokan/bob-wallet/releases/download/v0.6.2/Bob-#{version}.dmg",
      verified: "github.com/kyokan/bob-wallet"
  appcast "https://github.com/kyokan/bob-wallet/releases.atom"
  name "Bob Wallet"
  desc "Handshake wallet GUI for name auction and DNS record management"
  homepage "https://bobwallet.io/"

  app "Bob.app"

  zap trash: [
    "~/Library/Application Support/Bob",
    "~/Library/Preferences/com.kyokan.BobRelease.plist",
    "~/Library/Saved Application State/com.kyokan.BobRelease.savedState",
  ]

  caveats "
Uninstalling the Bob Wallet cask using the --zap option will delete HSD chain data.
The Handshake node will have to resync the entire blockchain again if reinstalled."
end
