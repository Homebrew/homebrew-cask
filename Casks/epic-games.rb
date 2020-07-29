cask 'epic-games' do
  version '10.17.0'
  sha256 '3188930b5ace9393658d8fd93c399650611e18afbf27721a1d9164157df3f0a7'

  # epicgames-download1.akamaized.net/ was verified as official when first introduced to the cask
  url "https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Mac/EpicInstaller-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncher.dmg'
  name 'Epic Games Launcher'
  homepage 'https://www.epicgames.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Epic Games Launcher.app'

  zap trash: [
               '~/Library/Caches/com.epicgames.EpicGamesLauncher',
               '~/Library/Application Support/Epic',
               '~/Library/Cookies/com.epicgames.EpicGamesLauncher.binarycookies',
               '~/Library/Logs/Unreal Engine/EpicGamesLauncher',
               '~/Library/Preferences/Unreal Engine/EpicGamesLauncher',
             ]
end
