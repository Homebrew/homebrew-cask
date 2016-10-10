cask 'box-sync' do
  version :latest
  sha256 :no_check

  # boxcdn.net was verified as official when first introduced to the cask
  url 'https://e3.boxcdn.net/box-installers/sync/Sync+4+External/Box%20Sync%20Installer.dmg'
  name 'Box Sync'
  homepage 'https://sites.box.com/sync4/'

  app 'Box Sync.app'

  uninstall quit:   'com.box.sync',
            delete: [
                      '/Library/PrivilegedHelperTools/com.box.sync.iconhelper',
                      '/Library/PrivilegedHelperTools/com.box.sync.bootstrapper',
                    ]

  zap delete: [
                '~/Library/Application Support/Box/Box Sync',
                '~/Library/Logs/Box/Box Sync',
              ],
      rmdir:  '~/Library/Application Support/Box'
end
