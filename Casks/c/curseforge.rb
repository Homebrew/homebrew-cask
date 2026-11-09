cask "curseforge" do
  version "1.325.0-41594"
  sha256 "196dc4bfe914ff43c2f4176580bc65c594734c147008ad52ff8627988140cc94"

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
