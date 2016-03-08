cask 'eve-launcher' do
  version '998442'
  sha256 '55ffa32f25fcbdcf063449842aa06d6fe8e143ea38f5890754725c2fc9b34be0'

  url "https://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name 'Eve Online'
  homepage 'https://www.eveonline.com/'
  license :commercial

  app 'EVE Launcher.app'

  zap delete: [
                '~/Library/Preferences/com.ccpgames.EVE.plist',
                '~/Library/Application Support/EVE Online',
                '~/Library/Application Support/CCP/EVE',
              ]
end
