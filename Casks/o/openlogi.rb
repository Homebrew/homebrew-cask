cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.1"
  sha256 arm:   "e9d4b2066f124c80e4471cd61b9ab8028c3a213d412597ba7a829edb6843be7c",
         intel: "122b6e1d3d370b658ba8f34e0525fc3012f465c5ee1be271bdba4ede90cef80b"

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
