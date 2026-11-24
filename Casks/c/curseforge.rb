cask "curseforge" do
  version "1.328.0-43478"
  sha256 "f325c86a473a4733039be1af1c4edb5a7c8f41fdda5448ebc3adcc31c3ada20c"

  url "https://curseforge.overwolf.com/electron/mac/CurseForge-#{version}-universal-mac.zip"
  name "CurseForge"
  desc "Download and manage your addons and mods"
  homepage "https://curseforge.overwolf.com/"

  livecheck do
    url "https://curseforge.overwolf.com/electron/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

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
