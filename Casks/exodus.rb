cask "exodus" do
  version "20.12.31"
  sha256 "ee0b0356431d5fa1812baa06a5ca055b73906ce32f695d4f19994afd447829b3"

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
