cask "nano" do
  version "21.2"
  sha256 "a5f6a987b1516495afc64810b41003f0332de49ec4d54b6f1ed652dbba7f5896"

  # github.com/nanocurrency/nano-node/ was verified as official when first introduced to the cask
  url "https://github.com/nanocurrency/nano-node/releases/download/V#{version}/nano-node-V#{version}-Darwin.dmg"
  appcast "https://github.com/nanocurrency/nano-node/releases.atom"
  name "Nano"
  desc "Local node for the Nano cryptocurrency"
  homepage "https://nano.org/"

  depends_on macos: ">= :sierra"

  app "Nano.app"

  zap trash: [
    "~/Library/Preferences/net.raiblocks.rai_wallet.Nano.plist",
    "~/Library/Saved Application State/net.raiblocks.rai_wallet.savedState",
    "~/Library/RaiBlocks",
  ]
end
