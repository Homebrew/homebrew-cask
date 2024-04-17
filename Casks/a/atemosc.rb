cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.16"
  sha256 arm:   "cb63abdbe01cba56a843e3dab4b0aed53848322ff241e5b9eb83f63db29b40c5",
         intel: "fb47d97294c2e511e8ca89ef64166833a068ee74b8cf047245f9f193882f34d9"

  url "https://atemosc.com/download/atemOSC-#{version}#{arch}.dmg"
  name "atemOSC"
  desc "Control BMD ATEM video switchers with OSC"
  homepage "https://www.atemosc.com/"

  livecheck do
    url "https://www.atemosc.com/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true # Requires a license key to enable
  depends_on macos: ">= :high_sierra"

  app "atemOSC.app"

  zap trash: [
    "~/Library/Application Support/atemOSC",
    "~/Library/Logs/atemOSC",
    "~/Library/Preferences/dev.steffey.atemOSC.plist",
    "~/Library/Saved Application State/dev.steffey.atemOSC.savedState",
  ]
end
