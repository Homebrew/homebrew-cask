cask "curseforge" do
  version :latest
  sha256 :no_check

  url "https://curseforge.overwolf.com/downloads/curseforge-latest.dmg"
  name "CurseForge"
  desc "Download and manage your addons and mods"
  homepage "https://curseforge.overwolf.com/"

  app "CurseForge.app"

  uninstall launchctl: "com.overwolf.curseforge.ShipIt",
            quit:      "com.overwolf.curseforge"

  zap trash: [
    "~/Library/Application Support/Caches/curseforge-updater",
    "~/Library/Application Support/CurseForge",
  ]
end
