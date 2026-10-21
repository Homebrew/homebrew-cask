cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.16"
  sha256 arm:   "3339ae577c95b8e04576b4b1c9151bc80a14737644a310f795bd7bb2ad921ac3",
         intel: "c004cac584a64dcb022aa00f73c2bf55661d0fdab033da0e0fae0aa92af6c7ff"

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

  uninstall launchctl: "org.openlogi.agent.service",
            quit:      [
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
