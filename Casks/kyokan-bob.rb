cask "kyokan-bob" do
  version "0.9.0"
  sha256 "fb097ae8405705de007fe86def051b259de38c4b969ffff2f3cd081b80b95eeb"

  url "https://github.com/kyokan/bob-wallet/releases/download/v#{version}/Bob-#{version}.dmg",
      verified: "github.com/kyokan/bob-wallet/"
  name "Bob Wallet"
  desc "Handshake wallet GUI for name auction and DNS record management"
  homepage "https://bobwallet.io/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Bob.app"

  zap trash: [
    "~/Library/Application Support/Bob",
    "~/Library/Preferences/com.kyokan.BobRelease.plist",
    "~/Library/Saved Application State/com.kyokan.BobRelease.savedState",
  ]
end
