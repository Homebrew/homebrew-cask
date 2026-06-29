cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.18"
  sha256 arm:   "bed9ad60fe5f1a082f4ccca643c0bb40941088e1dcd05986405e040fa64138c1",
         intel: "a2e39a50300b64ef98b586b3876f76a5086aa5de6f8ec0d0a8f738c5f083a85b"

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
