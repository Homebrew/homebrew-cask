cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.7"
  sha256 arm:   "39879b5fc8a0c70f49d71a63eda96ee07344a7c61401ce781b80e150aa08127a",
         intel: "8f875aa116194acd90498b64afe2a8edd6fdbc0147d457e45e3ec41e646bfbcb"

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
