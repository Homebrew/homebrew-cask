cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:   "5477315b9ed9436a99fb66fff5d64a816e06c81e640654079e319d62c699e4ab",
         intel: "831e8953094bd277b4c15465e5e85012d3b7aeb94dd1f23691bdae4ca9dcc147"

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
  binary "#{appdir}/OpenLogi.app/Contents/MacOS/openlogi"

  uninstall quit: [
    "org.openlogi.agent",
    "org.openlogi.openlogi",
    "org.openlogi.overlay",
  ]

  zap trash: [
    "~/.config/openlogi",
    "~/.local/share/openlogi",
    "~/Library/Caches/org.openlogi.openlogi",
    "~/Library/Preferences/org.openlogi.openlogi.plist",
    "~/Library/Preferences/org.openlogi.overlay.plist",
    "~/Library/Saved Application State/org.openlogi.openlogi.savedState",
  ]
end
