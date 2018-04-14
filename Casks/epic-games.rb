cask 'epic-games' do
  version '7.9.0'
  sha256 'f24f650627e8808807039dbe7bbcb56216caec2aa407cf8e3d6df7e628f4530c'

  # epicgames.com was verified as official when first introduced to the cask
  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicInstaller-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'

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
