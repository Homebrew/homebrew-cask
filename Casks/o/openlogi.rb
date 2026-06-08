cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.0"
  sha256 arm:   "b66bdf2f4dec715478aed46b25a10123dcb6b9b6ce5c127576bced17ca0de489",
         intel: "b43c4c29174887eefab717d6cffee47781bccd5fee340bc5e8da743bd5940949"

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
