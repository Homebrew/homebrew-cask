cask "nano" do
  version "21.3"
  sha256 "5fd4d10e85deca133851f1be17735a76810ca508ebca413902396123b1604006"

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
