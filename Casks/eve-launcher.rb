cask "eve-launcher" do
  version "1850297"
  sha256 "1887e9bc57ca8fd552f2a1abe1eb6b7db8af3bdfe36f5a612f8d5c4ea6965eab"

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  appcast "https://launcher.eveonline.com/launcherVersions.json"
  name "Eve Online"
  homepage "https://www.eveonline.com/"

  auto_updates true

  app "EVE Launcher.app"

  zap trash: [
    "~/Library/Preferences/com.ccpgames.EVE.plist",
    "~/Library/Application Support/EVE Online",
    "~/Library/Application Support/CCP/EVE",
  ]
end
