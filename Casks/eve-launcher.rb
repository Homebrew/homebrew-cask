cask "eve-launcher" do
  version "1977522"
  sha256 "27799d60afe27ffafac52cf7c0fe80f6fcdf9d6986935e8dfc58c605b38dcd96"

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
