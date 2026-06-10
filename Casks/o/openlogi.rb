cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.6"
  sha256 arm:   "bca33606374b0e5c250dbc68e8cb486a4aa9dcd26ab2252596e3a9bfe4d97007",
         intel: "1e52567497a9605ce009786a3f449078f7216c04e7a9bcebb90fda64fbdf9739"

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
