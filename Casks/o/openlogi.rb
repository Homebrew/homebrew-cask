cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.21"
  sha256 arm:   "d38407fbdc15dc7d095ef96df648865324b26aa7a70b59675327c885704137ff",
         intel: "374fbcd49396e88e1b49928366d76e73735e5c51cec20000a4adfc6c2c77ddf8"

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
