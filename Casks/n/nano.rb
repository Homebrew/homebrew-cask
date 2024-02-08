cask "nano" do
  version "25.1"
  sha256 "ef05a7d200685e3e20eea1235122abdea49f917b547e19cef4daff26020eeb6f"

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
