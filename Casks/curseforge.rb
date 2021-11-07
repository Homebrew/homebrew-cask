cask "curseforge" do
  version "0.185.5-1"
  sha256 "147f7aa2bc42a33bc1cd045a293d881b18c3a6f0b4d13da9357976b0abd61183"

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
