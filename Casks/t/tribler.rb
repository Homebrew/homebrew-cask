cask "tribler" do
  arch arm: "arm", intel: "i386"

  version "8.4.3"
  sha256 arm:   "5f6541b71f5537469728db8b7cda2fd0e2a11a33a3185db3339c518843b33e3c",
         intel: "65652bc9889e91b8be6364c133d097ecc1af88a74351be7bb7f680bcd171e5a2"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
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

  depends_on :macos

  app "tribler-#{version}-#{arch}.app", target: "Tribler.app"

  zap trash: [
    "~/.Tribler",
    "~/Library/Preferences/com.nl-tudelft-tribler.plist",
    "~/Library/Preferences/nl.tudelft.tribler.plist",
    "~/Library/Saved Application State/nl.tudelft.tribler.savedState",
  ]
end
