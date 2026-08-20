cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.3"
  sha256 arm:   "542ed7f738d99aadfd237cadee4f276d14f8985d10d3364adfb2911124c177dd",
         intel: "55df0d21531525c6b8bd1d3719668421a1de5e87c80123ee72ac445b61334d64"

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
