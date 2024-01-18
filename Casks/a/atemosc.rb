cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.6"
  sha256 arm:   "eb6825da0fba505222baaa94f1b498147de8dacf69e3d53476c0b413a31cc62b",
         intel: "f9fd72d86a8c30fc6f67d204a053d3310d94173fb8c1ac98f6334250f57368d0"

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
