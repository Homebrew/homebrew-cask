cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.17"
  sha256 arm:   "d9288019a1a951c9133e25032880497768791bb2a418742ca2c1432360d15059",
         intel: "de80b2078d7afbde9cc1073fcc22790942cd62bb0a9d2a255dd0a527aedfde57"

  url "https://updates.openlogi.org/releases/v#{version}/OpenLogi-v#{version}-macos-#{arch}.dmg"
  name "OpenLogi"
  desc "Local-first alternative to Logitech Options+ for HID++ devices"
  homepage "https://openlogi.org/"

  livecheck do
    url "https://github.com/AprilNEA/OpenLogi"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "OpenLogi.app"

  zap trash: [
    "~/.config/openlogi",
    "~/.local/share/openlogi",
    "~/Library/Caches/org.openlogi.openlogi",
    "~/Library/Preferences/org.openlogi.openlogi.plist",
    "~/Library/Saved Application State/org.openlogi.openlogi.savedState",
  ]
end
