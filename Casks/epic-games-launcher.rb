cask 'epic-games-launcher' do
  version '2.11.9-2970807'
  sha256 'cf73e0ae7ecd03c415a7134984ad7b0775127cb490c71744d674ef1d2090c372'

  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicGamesLauncher-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'
  license :commercial

  app 'Epic Games Launcher.app'
end
