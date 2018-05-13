cask 'epic-games' do
  # Auto-updates to a newer version than available on the homepage.
  # Latest version is posted to the forum:
  # https://forums.unrealengine.com/unreal-engine/announcements-and-releases/1928-latest-launcher-release-notes
  version '7.9.4'
  sha256 '1f5bc125a5173ab6c4c8e8a05f3e27d8fdb522360834e7a8c947788a1e998eed'

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
