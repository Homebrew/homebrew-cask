cask "nano" do
  version "23.3"
  sha256 "20057926a464c25090d69c9ce783d8211d91ed94fa0e3772340f8fb7ba1604f7"

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
    "~/Library/RaiBlocks",
    "~/Library/Saved Application State/net.raiblocks.rai_wallet.savedState",
  ]
end
