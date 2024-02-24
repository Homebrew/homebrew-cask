cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.12"
  sha256 arm:   "859d092f570125d9b8bde39df2971955d44c0c73a6b7c7786a8c387fc7d69fc8",
         intel: "2539f05642da83e6b6de2aee6942044da4c3fc9601768196f2cc435d786edd93"

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
