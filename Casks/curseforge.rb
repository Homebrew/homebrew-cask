cask "curseforge" do
  version "0.186.1-2"
  sha256 "95fb6a13c09997e5d448877444bca1d94daf3b610219a9ae7f079a85d5064262"

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
