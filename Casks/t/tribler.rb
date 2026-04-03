cask "tribler" do
  arch arm: "arm", intel: "i386"

  version "8.4.2"
  sha256 arm:   "7add076282df31f47434b7e1c383491882dba07722f13c0fccec5b5088270cde",
         intel: "8057a15463abf63ce6834d79a1dec3fde506934704e299ea509909ade96fc6e8"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}-#{arch}.dmg"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://github.com/Tribler/tribler"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "tribler-#{version}-#{arch}.app", target: "Tribler.app"

  zap trash: [
    "~/.Tribler",
    "~/Library/Preferences/com.nl-tudelft-tribler.plist",
    "~/Library/Preferences/nl.tudelft.tribler.plist",
    "~/Library/Saved Application State/nl.tudelft.tribler.savedState",
  ]
end
