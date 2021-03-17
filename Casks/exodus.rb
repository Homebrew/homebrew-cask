cask "exodus" do
  version "21.3.12"
  sha256 "ff4fddf464d03b7baa7cb477fd42fa1cb6803595268ea69db06695117031b8c2"

  url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  appcast "https://www.exodus.com/releases/"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
