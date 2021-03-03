cask "eve-launcher" do
  version "1878290"
  sha256 "72a2a3c272e5fc53f65e4288bb0ec3fb2a6f7e64dcf493ab67946ae4c320c805"

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
