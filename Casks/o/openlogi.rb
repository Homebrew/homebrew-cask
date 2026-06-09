cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.3"
  sha256 arm:   "4bc5e5c2e39dfe6c8aa28482b2f76a03d41400192678c25880a79daee034e95f",
         intel: "80f6ae4ed80d8661098e18401f9e9f25c8006209dc0767fe3f596d45be3c444a"

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
