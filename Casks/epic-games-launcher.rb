cask :v1 => 'epic-games-launcher' do
  version '2.0.1-2467307'
  sha256 'e04e5b6232df5bd81d4b796f5c4556a55b56a34e0089c9f65f67c2f3b9c830d1'

  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicGamesLauncher-#{version}.dmg"
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'
  license :commercial
  tags :vendor => 'EpicGames'

  app 'Epic Games Launcher.app'
end
