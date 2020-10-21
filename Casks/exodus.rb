cask "exodus" do
  version "20.10.19"
  sha256 "f622d9337e5cf6e6bcdd7e2656889dd8a7507b9a554ffa5b9b3c21190c543d29"

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
