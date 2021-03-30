cask "exodus" do
  version "21.3.29"
  sha256 "fb5be5d86de3dd358a548fb411e25ea7a58f14b89d830bfab9fa6edb12fcf344"

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
