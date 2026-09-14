cask "curseforge" do
  version "1.320.0-39237"
  sha256 "2403e90d865ceabbeec63b4ed64d3e7baea026cda7356ca9154674c70db3c8bf"

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
