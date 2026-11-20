cask "curseforge" do
  version "1.327.0-43047"
  sha256 "0cedf630b5ee254067bc0009e0750eb3a090a61caf5045d6e7fd97c43a9c0f96"

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
