cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.7"
  sha256 arm:   "c89cb95833194bf3e1bb83c1bf0c4fabd323a05b11ec57afc39251b41e2d4da8",
         intel: "329982e2309107bfbe32b78f04f860a035d938f040e92d7e3ed8af610f344f88"

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
