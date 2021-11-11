cask "eve-launcher" do
  version "1952584"
  sha256 "417f3e68d1e1447a0241c0456ff1ba91b9cc2f9dd6d8df657a6a0f42d7a4fb92"

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name "Eve Online"
  desc "EVE Online client"
  homepage "https://www.eveonline.com/"

  livecheck do
    url "https://launcher.eveonline.com/launcherVersions.json"
    regex(/"mac"\s*:\s*(\d+)/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "EVE Launcher.app"

  zap trash: [
    "~/Library/Application Support/CCP/EVE",
    "~/Library/Application Support/EVE Online",
    "~/Library/Preferences/com.ccpgames.EVE.plist",
  ]
end
