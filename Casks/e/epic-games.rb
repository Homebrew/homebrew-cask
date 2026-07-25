cask "epic-games" do
  version "20.1.4"
  sha256 "5c4f204ed623b01890f26cc99d4af657c3fbd6be1d04be7fed176ddbc94b1259"

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
