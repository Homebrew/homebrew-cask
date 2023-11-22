cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.3"
  sha256 arm:   "d514458ec2c252dbe39620a77e760d0161d21111fbfc75763b2bf445b4d8c8a8",
         intel: "4a8e2e25588f07c0684cb33eb98c1f2efd50f443257b822a6efaca6ef6f7da38"

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
