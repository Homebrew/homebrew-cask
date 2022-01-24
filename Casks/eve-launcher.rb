cask "eve-launcher" do
  version "1986936"
  sha256 "c8c7a15c2f130c59c6295b47010054f1c99b54c0ebb1e94166f16a35df921387"

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
