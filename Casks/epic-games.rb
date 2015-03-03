cask :v1 => 'epic-games' do
  version :latest
  sha256 :no_check

  url 'https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncher.dmg'
  name 'Epic Games Launcher'
  name 'Unreal Engine'
  homepage 'https://www.unrealengine.com/'
  license :other
  tags :vendor => 'Epic Games'

  app 'Epic Games Launcher.app'

  zap :delete => [
                  '~/Library/Preferences/com.epicgames.UE4Editor.plist',
                  '~/Library/Preferences/Unreal Engine/',
                  '~/Library/Application Support/Epic/',
                  '/Users/Shared/UnrealEngine/',
                 ]
end
