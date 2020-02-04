cask 'epic-games' do
  version '10.12.3'
  sha256 '8f7966f974f65d50b38ce6738050aa4f663d9f4628fde4678846127db4392e20'

  # epicgames-download1.akamaized.net was verified as official when first introduced to the cask
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
