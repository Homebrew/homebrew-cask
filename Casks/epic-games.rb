cask 'epic-games' do
  version '7.8.0'
  sha256 '1d23e120553a664c0a88456f2b7c493a3389210ba4cdd0bbfad62d4e1dcfc2e6'

  # epicgames.com was verified as official when first introduced to the cask
  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicInstaller-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'

  auto_updates true

  app 'Epic Games Launcher.app'

  zap trash: '~/Library/Caches/com.epicgames.EpicGamesLauncher'
end
