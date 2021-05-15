cask "nano" do
  version "22.0"
  sha256 "ad1876c81467aa8331d1d757b281a5a7de6458446fd7d98c15f999825feea78d"

  url "https://github.com/nanocurrency/nano-node/releases/download/V#{version}/nano-node-V#{version}-Darwin.dmg",
      verified: "github.com/nanocurrency/nano-node/"
  name "Nano"
  desc "Local node for the Nano cryptocurrency"
  homepage "https://nano.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Nano.app"

  zap trash: [
    "~/Library/Preferences/net.raiblocks.rai_wallet.Nano.plist",
    "~/Library/Saved Application State/net.raiblocks.rai_wallet.savedState",
    "~/Library/RaiBlocks",
  ]
end
