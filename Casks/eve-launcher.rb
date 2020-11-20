cask "eve-launcher" do
  version "1848961"
  sha256 "05563e273b74dedc6f23046f73e59e2c32719f7d727e8a983e39809e21ad80a6"

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
