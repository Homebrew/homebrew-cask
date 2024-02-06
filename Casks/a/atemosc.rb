cask "atemosc" do
  arch arm: "-arm64"

  version "5.0.8"
  sha256 arm:   "3905b0af6499ed02c4bcb83be31dba0c9fe6f8cc0c99ebf041aaa70a6d8b7fdb",
         intel: "a839e4a3b2bf4f0db400caf2851b44c298d73ac1e4faf8fae1be1eaa16b6a0fe"

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
