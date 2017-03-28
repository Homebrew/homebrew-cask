cask 'mal-updater-os-x' do
  version :latest
  sha256 :no_check

  url 'https://malupdaterosx.ateliershiori.moe/download.php'
  name 'MAL Updater OS X'
  homepage 'https://malupdaterosx.ateliershiori.moe'

  app 'MAL Updater OS X.app'

  zap delete: [
                '~/Library/Preferences/com.chikorita157.MAL-Updater-OS-X.plist',
                '~/Library/Application Support/MAL Updater OS X',
              ]
end
