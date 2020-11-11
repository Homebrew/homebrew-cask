cask "eve-launcher" do
  version "1832603"
  sha256 "f775226149426880ffc24991f59521c132a01caef7f78914432f73ca8ff06953"

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
