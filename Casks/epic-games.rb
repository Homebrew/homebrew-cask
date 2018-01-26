cask 'epic-games' do
  version '2.12.24-3321064'
  sha256 'b1e37a5ff042fb5e13cd904d71acb14496bd65036612a726ff3b509947779c1d'

  # epicgames.com was verified as official when first introduced to the cask
  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicGamesLauncher-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'

  app 'Epic Games Launcher.app'

  zap trash: '~/Library/Caches/com.epicgames.EpicGamesLauncher'
end
