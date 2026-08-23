cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.10"
  sha256 arm:   "27a599af4131ff328ea9e1eea4fe2eff568d5d4c7434f1e2b7700b6798bb438e",
         intel: "d28e5c00ab22683595f8dd2d5cb317a2376ee959454898c558999cb44e51d9d8"

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
