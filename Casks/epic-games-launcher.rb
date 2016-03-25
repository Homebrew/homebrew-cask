cask 'epic-games-launcher' do
  version '2.11.0-2904489'
  sha256 '807348dc48bbbca7e46504035e9e0ceb7f36f2b3eba91e0a521acc0b87ea0c19'

  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicGamesLauncher-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'
  license :commercial

  app 'Epic Games Launcher.app'
end
