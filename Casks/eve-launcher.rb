cask "eve-launcher" do
  version "1902445"
  sha256 "55268a99ddcbe60f9a8fc87dae34b7ff1de09e0ef80df32554421716bb9b59f6"

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name "Eve Online"
  desc "EVE Online client"
  homepage "https://www.eveonline.com/"

  livecheck do
    url "https://launcher.eveonline.com/launcherVersions.json"
    strategy :page_match
    regex(/"mac"\s*:\s*(\d+)/i)
  end

  auto_updates true

  app "EVE Launcher.app"

  zap trash: [
    "~/Library/Preferences/com.ccpgames.EVE.plist",
    "~/Library/Application Support/EVE Online",
    "~/Library/Application Support/CCP/EVE",
  ]
end
