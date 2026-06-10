cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.4"
  sha256 arm:   "fa3df01542960f11229fab5619deea9d350194b9cc775bc0336949d4dee3b3a3",
         intel: "963133b2d55145feff8c12edf725a09b914da2b50e1cace4d664ab74362ab5bb"

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
