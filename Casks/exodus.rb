cask "exodus" do
  version "21.3.2"
  sha256 "5e3f89527290f18bc8fd4ff5d316dadfc0c1b4cbb7c1ed554b9e5703a163ad43"

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
