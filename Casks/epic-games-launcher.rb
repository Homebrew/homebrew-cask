cask 'epic-games-launcher' do
  version '2.12.5-3056631'
  sha256 'f300b6e0c5bb421a9bcddbbb3144c2366c37e406c917b03a7b73c052ca7bc896'

  # epicgames.com was verified as official when first introduced to the cask
  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicGamesLauncher-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'

  app 'Epic Games Launcher.app'
end
