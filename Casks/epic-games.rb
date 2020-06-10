cask 'epic-games' do
  version '10.15.2'
  sha256 '9512e859ad79cda86c8ab95ce6bbb1e7e6d2e02d24ba5ed5aa5a277c0fa5e9d3'

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
