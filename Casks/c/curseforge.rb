cask "curseforge" do
  version "1.297.3-30829"
  sha256 "8d5472739690e7d6a6ef2507af14e18eccfa808741c1e3f895de9f8a272ab1e2"

  url "https://curseforge.overwolf.com/electron/mac/CurseForge-#{version}-universal-mac.zip"
  name "CurseForge"
  desc "Download and manage your addons and mods"
  homepage "https://curseforge.overwolf.com/"

  livecheck do
    url "https://curseforge.overwolf.com/electron/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "CurseForge.app"

  uninstall launchctl: "com.overwolf.curseforge.ShipIt",
            quit:      "com.overwolf.curseforge"

  zap trash: [
    "~/Library/Application Support/Caches/curseforge-updater",
    "~/Library/Application Support/CurseForge",
  ]
end
