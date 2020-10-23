cask "eve-launcher" do
  version "1828507"
  sha256 "c27b8a8fe400b5713f9f12d5c8f57373125b3d10e24e6e69344dcd980b248527"

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
