cask "exodus" do
  version "21.2.12"
  sha256 "8a67bc29b3d0e30ab33dcce07488aedb17f6e878785a2cb40bc50857313cfff6"

  url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  appcast "https://www.exodus.com/releases/"
  name "Exodus"
  desc "Desktop wallet supporting 100+ cryptocurrency assets"
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
