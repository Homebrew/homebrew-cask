cask :v1 => 'epic-games-launcher' do
  version '2.1.1-2502673'
  sha256 'f67e513d90fc10af68234b0fdd0b287343adb248a93885ea664d1f3a86250dac'

  url "https://download.epicgames.com/Builds/UnrealEngineLauncher/Installers/EpicGamesLauncher-#{version}.dmg"
  name 'Epic Games Launcher'
  homepage 'https://www.unrealengine.com/what-is-unreal-engine-4'
  license :commercial
  tags :vendor => 'EpicGames'

  app 'Epic Games Launcher.app'
end
