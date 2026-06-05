cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.2"
  sha256 arm:   "70888537a2b8c420711ef1ca9a8f72f6866b5c102ac4935403f0bf983caabcbf",
         intel: "efb010b92017c5b006529e40813893e9fae203bad32428fd447cdb03fb8cdc3a"

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
