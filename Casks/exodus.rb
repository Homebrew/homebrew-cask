cask "exodus" do
  version "20.10.23"
  sha256 "d492874f8ffecc938e64a992c9062ee9efdc17aa4f6bce5ff42c5a3435a4e6b1"

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
