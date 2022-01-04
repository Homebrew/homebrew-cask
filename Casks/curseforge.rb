cask "curseforge" do
  version "0.189.2-0"
  sha256 "04077cdf3c14933c386e3ff1648036be53b93c86a825a44f2072e6c4d55d9d8e"

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
