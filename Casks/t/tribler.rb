cask "tribler" do
  version "8.3.1"
  sha256 "6a37959aa4b89464d863ee663be869459faaf1bc38189797fea69a5b9293b719"

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://github.com/Tribler/tribler"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
