cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.0"
  sha256 arm:   "a7a2b7f39c8a19e66739fd51427ff4b8c90c7f9357a9c7a7c47da71c99f90c4d",
         intel: "3cd9ed1ccbcdabebe06bcce5b7ef3bcc059168cb7b2bebe5b472ebec9026c2d9"

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
