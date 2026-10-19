cask "steam" do
  version "984652b88a9737e3f4e77c656d9ffa67d5042c2c"
  sha256 "8bf4ce8b4bcbc50f642988c955559f605e7a877372116e7a2b3fd1355004bedb"

  url "https://client-update.steamstatic.com/appdmg_osx.zip.#{version}"
  name "Steam"
  desc "Video game digital distribution service"
  homepage "https://store.steampowered.com/about/"

  livecheck do
    url "https://client-update.steamstatic.com/steam_client_osx"
    regex(/"file"\s+"appdmg_osx\.zip\.(\h+)"/i)
  end

  auto_updates true
  depends_on :macos
  container type: :zip, nested: "SteamMacBootstrapper.tar.gz"

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
    "~/Library/Application Support/Steam",
    "~/Library/LaunchAgents/com.valvesoftware.steamclean.plist",
    "~/Library/Preferences/com.valvesoftware.steam.helper.plist",
    "~/Library/Saved Application State/com.valvesoftware.steam.savedState",
  ]
end
