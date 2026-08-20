cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.2"
  sha256 arm:   "03eb974d601d70d52d8626c70f246bc7e532e8ac71320b99410ab2a70457eebe",
         intel: "723514e54675135e2fc909463e49ff898d333ae6b50e339d363163c0d8ec22e9"

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
