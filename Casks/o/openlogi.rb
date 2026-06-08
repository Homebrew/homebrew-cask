cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.2"
  sha256 arm:   "a22dea533fd5dda30802f131e77590cdc82b836ddb0c9e929f7d1249e3d75925",
         intel: "9090a9da10e859ca1923ef687684e39afd1058ebf1fd78a5ee3077179a71ef8c"

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
