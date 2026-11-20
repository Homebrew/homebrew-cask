cask "epic-games" do
  version "20.3.3"
  sha256 "d25d7344f3759ef820c3b3f27eab10e86bfaba22788f88d5b917f4937a429076"

  url "https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Mac/EpicInstaller-#{version}.dmg"
  name "Epic Games Launcher"
  desc "Launcher for *Epic Games* games"
  homepage "https://www.epicgames.com/"

  livecheck do
    url "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncher.dmg"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "Epic Games Launcher.app"

  zap trash: [
    "~/Library/Application Support/Epic",
    "~/Library/Caches/com.epicgames.EpicGamesLauncher",
    "~/Library/Cookies/com.epicgames.EpicGamesLauncher.binarycookies",
    "~/Library/HTTPStorages/com.epicgames.CrashReportClient",
    "~/Library/HTTPStorages/com.epicgames.EpicGamesLauncher",
    "~/Library/Logs/Unreal Engine/EpicGamesLauncher",
    "~/Library/Preferences/Unreal Engine/EpicGamesLauncher",
  ]
end
