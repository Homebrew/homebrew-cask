cask "exodus" do
  version "20.12.18"
  sha256 "7f068787e056dd890b5f495ebd94c2e86008192f0b351ad541fe0483f56772cb"

  url "https://downloads.exodus.io/releases/exodus-macos-#{version}.dmg"
  appcast "https://www.exodus.io/releases/"
  name "Exodus"
  homepage "https://www.exodus.io/"

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
