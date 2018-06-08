cask 'epic-games' do
  # Auto-updates to a newer version than available on the homepage.
  # Latest version is posted to the forum:
  # https://forums.unrealengine.com/unreal-engine/announcements-and-releases/1928-latest-launcher-release-notes
  version '7.11.0'
  sha256 '08c2d362d211baead8106deaeba6ea1f07af226066772554294298a96c9c8d56'

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
