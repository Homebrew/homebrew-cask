cask 'epic-games' do
  version '9.7.0'
  sha256 '24b4c54a3e93b4879087cf99bd676b53543ffaa4c8c122b85efed6c747dc13ea'

  # epicgames-download1.akamaized.net was verified as official when first introduced to the cask
  url "https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Mac/EpicInstaller-#{version}.dmg"
  appcast 'https://forums.unrealengine.com/unreal-engine/announcements-and-releases/1928-latest-launcher-release-notes'
  name 'Epic Games Launcher'
  homepage 'https://www.epicgames.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Epic Games Launcher.app'

  zap trash: [
               '~/Library/Caches/com.epicgames.EpicGamesLauncher',
               '~/Library/Application Support/Epic',
               '~/Library/Cookies/com.epicgames.EpicGamesLauncher.binarycookies',
               '~/Library/Logs/Unreal Engine/EpicGamesLauncher',
               '~/Library/Preferences/Unreal Engine/EpicGamesLauncher',
             ]
end
