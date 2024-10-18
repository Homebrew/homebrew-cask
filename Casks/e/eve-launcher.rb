cask "eve-launcher" do
  version "2377803"
  sha256 "d53dc164eabbafe970b04d8452c54fd0dd93cdebed114006a1c6564927db0ade"

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name "Eve Online"
  desc "EVE Online client"
  homepage "https://www.eveonline.com/"

  livecheck do
    url "https://launcher.eveonline.com/launcherVersions.json"
    strategy :json do |json|
      json["mac"]&.to_s
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "EVE Launcher.app"

  zap trash: [
    "~/Library/Application Support/CCP/EVE",
    "~/Library/Application Support/EVE Online",
    "~/Library/Preferences/com.ccpgames.EVE.plist",
  ]

  caveats do
    requires_rosetta
  end
end
