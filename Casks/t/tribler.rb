cask "tribler" do
  version "8.0.5"
  sha256 "95e7601823f7cf8bd0f7bb2beb927ac40cf14947a886e4c795e417934598b4d4"

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
