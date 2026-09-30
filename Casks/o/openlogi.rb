cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.10"
  sha256 arm:   "c259ea4f1098011c0355ebedd0ee2f9d6455fba061fc5da880350d5139741499",
         intel: "dec8a27cfc7ee4073cefdf98643f6569438885efb42157baa6e122a79da2475e"

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
