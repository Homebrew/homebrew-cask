cask 'epic-games-launcher' do
  version '2.3.0-2604750'
  sha256 'e9e2d4d2753a9d3fee021df6ff421b1340d947e05c542a69ea08146160c82d94'

  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicGamesLauncher-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'
  license :commercial

  app 'Epic Games Launcher.app'
end
