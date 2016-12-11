cask 'epic-games-launcher' do
  version '2.12.14-3176191'
  sha256 '35d3a60287a37a1d41468ecb560ef85b52b08ca6d1ff7e8bfc370450e84ede31'

  # epicgames.com was verified as official when first introduced to the cask
  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicGamesLauncher-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'

  app 'Epic Games Launcher.app'

  zap delete: '~/Library/Caches/com.epicgames.EpicGamesLauncher'
end
