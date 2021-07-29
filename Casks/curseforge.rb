cask "curseforge" do
  version "0.178.2-0"
  sha256 "be81428dbe66facc9689195cb4f569131e3f8d3a396c57c5720d1607f8755199"

  url "https://curseforge.overwolf.com/electron/mac/CurseForge-#{version}.dmg"
  name "CurseForge"
  desc "Download and manage your addons and mods"
  homepage "https://curseforge.overwolf.com/"

  livecheck do
    url "https://curseforge.overwolf.com/electron/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "CurseForge.app"

  uninstall launchctl: "com.overwolf.curseforge.ShipIt",
            quit:      "com.overwolf.curseforge"

  zap trash: [
    "~/Library/Application Support/Caches/curseforge-updater",
    "~/Library/Application Support/CurseForge",
  ]
end
