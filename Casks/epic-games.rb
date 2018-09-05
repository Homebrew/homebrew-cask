cask 'epic-games' do
  version '7.12.1'
  sha256 '706c734473e606bac7f9213fc65f049d91740f028117196994008344ff663545'

  url "https://download-dynamic.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicInstaller-#{version}.dmg"
  appcast 'https://forums.unrealengine.com/unreal-engine/announcements-and-releases/1928-latest-launcher-release-notes'
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
