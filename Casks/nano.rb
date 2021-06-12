cask "nano" do
  version "22.1"
  sha256 "ca62f12563244679521fa9f2fdbba5a07e008faabb6e59ced5961cfca1bb9f04"

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
