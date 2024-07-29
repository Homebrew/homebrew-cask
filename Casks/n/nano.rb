cask "nano" do
  version "26.1"
  sha256 "4a0a28373f81054da50f18e0deeb461d6773b0a6cd15a11bbdfb30aead02a1d8"

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

  caveats do
    requires_rosetta
  end
end
