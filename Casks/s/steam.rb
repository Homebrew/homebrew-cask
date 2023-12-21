cask "steam" do
  version "4.0"
  sha256 :no_check

  url "https://cdn.cloudflare.steamstatic.com/client/installer/steam.dmg",
      verified: "cdn.cloudflare.steamstatic.com/"
  name "Steam"
  desc "Video game digital distribution service"
  homepage "https://store.steampowered.com/about/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Steam.app"

  uninstall launchctl: [
              "com.valvesoftware.steamclean",
              "com.valvesoftware.steam.ipctool",
            ],
            quit:      [
              "com.valvesoftware.steam",
              "com.valvesoftware.steam.helper",
              "com.valvesoftware.steam.helper.EH",
            ]

  zap trash: [
    "~/Library/LaunchAgents/com.valvesoftware.steamclean.plist",
    "~/Library/Preferences/com.valvesoftware.steam.helper.plist",
    "~/Library/Application Support/Steam/",
    "~/Library/Saved Application State/com.valvesoftware.steam.savedState/",
  ]
end
