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
              "com.valvesoftware.steam.ipctool",
              "com.valvesoftware.steamclean",
            ],
            quit:      [
              "com.valvesoftware.steam",
              "com.valvesoftware.steam.helper",
              "com.valvesoftware.steam.helper.EH",
            ],
            delete:    "~/Library/Application Support/Steam/Steam.AppBundle"

  zap trash: [
    "~/Library/Application Support/Steam/",
    "~/Library/LaunchAgents/com.valvesoftware.steamclean.plist",
    "~/Library/Preferences/com.valvesoftware.steam.helper.plist",
    "~/Library/Saved Application State/com.valvesoftware.steam.savedState/",
  ]

  caveats do
    requires_rosetta
  end
end
