cask "curseforge" do
  version "0.244.4-1"
  sha256 "9006cabbb8bff9dbfb16cad2c7971cd14b950797536ce2ec359fd4342f37195d"

  url "https://curseforge.overwolf.com/electron/mac/CurseForge-#{version}-universal-mac.zip"
  name "CurseForge"
  desc "Download and manage your addons and mods"
  homepage "https://curseforge.overwolf.com/"

  livecheck do
    url "https://curseforge.overwolf.com/electron/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "CurseForge.app"

  uninstall launchctl: "com.overwolf.curseforge.ShipIt",
            quit:      "com.overwolf.curseforge"

  zap trash: [
    "~/Library/Application Support/Caches/curseforge-updater",
    "~/Library/Application Support/CurseForge",
  ]
end
