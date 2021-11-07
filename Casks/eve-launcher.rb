cask "eve-launcher" do
  version "1924823"
  sha256 "29be2f63874d742f1ac6f40b084a9fb2f4c24d0ad8e0e84a59e26063af9f5e1e"

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name "Eve Online"
  desc "EVE Online client"
  homepage "https://www.eveonline.com/"

  livecheck do
    url "https://launcher.eveonline.com/launcherVersions.json"
    regex(/"mac"\s*:\s*(\d+)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "EVE Launcher.app"

  zap trash: [
    "~/Library/Application Support/CCP/EVE",
    "~/Library/Application Support/EVE Online",
    "~/Library/Preferences/com.ccpgames.EVE.plist",
  ]
end
