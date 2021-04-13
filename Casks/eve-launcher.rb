cask "eve-launcher" do
  version "1892908"
  sha256 "170f3ed1f4ca45e6d58fa17428e52cdc3df86b5d5f8e12ead8151c0462ef421e"

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
