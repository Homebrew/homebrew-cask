cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.0"
  sha256 arm:   "bcbc16c8680b24dabc939c7e06e38e39b2eed6056dda361170e03859808f81a4",
         intel: "c80ffcf47663793baaeb446322b0ce147c08929a54956d070c223ecd452e0d0e"

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
