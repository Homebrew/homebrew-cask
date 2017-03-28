cask 'mal-updater' do
  version '2.3'
  sha256 'b6ceb1d8f2ca60da81bd8ff728d0e07c5074bce76e5b857c666ff5f44db68ffa'

  url 'https://malupdaterosx.ateliershiori.moe/download.php'
  appcast 'https://updates.ateliershiori.moe/malupdaterosx/profileInfo.php',
          checkpoint: 'c98b2bdd9a563d9cf3027763b4da79530c76ddd2afadda3cfa91f4bd99e37a13'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe/'

  app 'MAL Updater OS X.app'

  zap delete: [
                '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
                '~/Library/Application Support/MAL Updater OS X',
              ]
end
