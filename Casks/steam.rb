cask "steam" do
  version "2.0"
  sha256 :no_check

  url "https://steamcdn-a.akamaihd.net/client/installer/steam.dmg",
      verified: "steamcdn-a.akamaihd.net/"
  name "Steam"
  desc "Video game digital distribution service"
  homepage "https://store.steampowered.com/about/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Steam.app"

  uninstall quit:      [
    "com.valvesoftware.steam",
    "com.valvesoftware.steam.helper",
    "com.valvesoftware.steam.helper.EH",
  ],
            launchctl: [
              "com.valvesoftware.steamclean",
              "com.valvesoftware.steam.ipctool",
            ]

  zap trash: [
    "~/Library/LaunchAgents/com.valvesoftware.steamclean.plist",
    "~/Library/Preferences/com.valvesoftware.steam.helper.plist",
    "~/Library/Application Support/Steam/",
    "~/Library/Saved Application State/com.valvesoftware.steam.savedState/",
  ]
end
