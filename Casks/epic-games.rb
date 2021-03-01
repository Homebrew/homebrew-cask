cask "epic-games" do
  version "10.19.2"
  sha256 "ec45afdb5de87368bbbeb3953332176c9652c957565b69b90b8072385bff9ad3"

  url "https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Mac/EpicInstaller-#{version}.dmg",
      verified: "epicgames-download1.akamaized.net/"
  name "Epic Games Launcher"
  desc "Launcher for *Epic Games* games"
  homepage "https://www.epicgames.com/"

  livecheck do
    url "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncher.dmg"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Epic Games Launcher.app"

  zap trash: [
    "~/Library/Caches/com.epicgames.EpicGamesLauncher",
    "~/Library/Application Support/Epic",
    "~/Library/Cookies/com.epicgames.EpicGamesLauncher.binarycookies",
    "~/Library/Logs/Unreal Engine/EpicGamesLauncher",
    "~/Library/Preferences/Unreal Engine/EpicGamesLauncher",
  ]
end
