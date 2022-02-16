cask "eve-launcher" do
  version "1990751"
  sha256 "c529add65ee1a3e3ac196b1bd38f1a33cf3afb0db3bc904345df2ae86c0154b9"

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
