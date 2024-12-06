cask "tribler" do
  version "8.0.6"
  sha256 "9111ff4b40ef62ce91182c7e8a575d7d6cdc95ea4b56c18ec1a92018460e9449"

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg",
      verified: "github.com/Tribler/tribler/"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://www.tribler.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tribler.app"

  zap trash: [
    "~/.Tribler",
    "~/Library/Preferences/com.nl-tudelft-tribler.plist",
    "~/Library/Preferences/nl.tudelft.tribler.plist",
    "~/Library/Saved Application State/nl.tudelft.tribler.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
