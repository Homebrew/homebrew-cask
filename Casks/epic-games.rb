cask "epic-games" do
  version "12.1.7"
  sha256 "c7548f11acd34fd3d817bbd862c822b0e420e24db51f9f9e7afbdc510034426c"

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
