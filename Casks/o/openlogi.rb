cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.1"
  sha256 arm:   "9a32560f0405fb8aa88c7b2b27ff0a9271ae22e3b8e85a75be0b2236fd5a6a01",
         intel: "1284dec8dbb25aa1606be022c8d81877fab24334e7a4f778c6e6a1b304bd5212"

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
