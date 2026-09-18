cask "curseforge" do
  version "1.321.1-39714"
  sha256 "de3bc68efb4e57e10c6766c40334166afb01c13917fa3016894fff14de01c06d"

  url "https://curseforge.overwolf.com/electron/mac/CurseForge-#{version}-universal-mac.zip"
  name "CurseForge"
  desc "Download and manage your addons and mods"
  homepage "https://curseforge.overwolf.com/"

  livecheck do
    url "https://curseforge.overwolf.com/electron/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "CurseForge.app"

  uninstall launchctl: "com.overwolf.curseforge.ShipIt",
            quit:      "com.overwolf.curseforge"

  zap trash: [
    "~/Library/Application Support/Caches/curseforge-updater",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.overwolf.curseforge.sfl*",
    "~/Library/Application Support/CurseForge",
    "~/Library/Logs/CurseForge",
    "~/Library/Preferences/com.overwolf.curseforge.plist",
  ]
end
