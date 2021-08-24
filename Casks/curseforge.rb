cask "curseforge" do
  version "0.180.1-1"
  sha256 "d33435ae7d2e556980f397fac91cd7c25c01f14f23973fccfcc45d6d405e2abb"

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
