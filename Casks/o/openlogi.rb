cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.14"
  sha256 arm:   "786ef37aa3c27be4bec36d7464cef5df1acd4e33df804f1cec33530fd7bd00e6",
         intel: "f9fb4ca77c122283ff61b8cb64da0cf45d349aead53f5c1b2f9ea9eb13506972"

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
