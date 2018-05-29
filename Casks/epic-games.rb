cask 'epic-games' do
  # Auto-updates to a newer version than available on the homepage.
  # Latest version is posted to the forum:
  # https://forums.unrealengine.com/unreal-engine/announcements-and-releases/1928-latest-launcher-release-notes
  version '7.9.5'
  sha256 'eac613627bf93becaff6d9c02e86ce7c3d7ef76c1699d1515e1223d62ac7d40c'

  url "https://download-dynamic.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicInstaller-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.epicgames.com/'

  auto_updates true

  app 'Epic Games Launcher.app'

  zap trash: [
               '~/Library/Caches/com.epicgames.EpicGamesLauncher',
               '~/Library/Application Support/Epic',
               '~/Library/Cookies/com.epicgames.EpicGamesLauncher.binarycookies',
               '~/Library/Logs/Unreal Engine/EpicGamesLauncher',
               '~/Library/Preferences/Unreal Engine/EpicGamesLauncher',
             ]
end
