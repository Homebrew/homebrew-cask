cask 'dropbox' do
  version :latest
  sha256 :no_check

  url 'https://www.dropbox.com/download?plat=mac&full=1'
  name 'Dropbox'
  homepage 'https://www.dropbox.com/'

  auto_updates true

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox',
            launchctl:  'com.dropbox.DropboxMacUpdate.agent'

  zap delete: [
                '/Library/DropboxHelperTools',
                '~/Library/Application Scripts/com.getdropbox.dropbox.garcon',
                '~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.getdropbox.Dropbox',
                '~/Library/Caches/com.dropbox.DropboxMacUpdate',
                '~/Library/Caches/com.getdropbox.dropbox',
                '~/Library/Caches/com.getdropbox.DropboxMetaInstaller',
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.dropbox.DropboxMacUpdate',
                '~/Library/Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Group Containers/com.getdropbox.dropbox.garcon',
                '~/Library/Logs/Dropbox_debug.log',
              ],
      trash:  [
                '~/.dropbox',
                '~/Library/Application Support/Dropbox',
                '~/Library/Dropbox',
                '~/Library/Preferences/com.dropbox.DropboxMacUpdate.plist',
                '~/Library/Preferences/com.dropbox.DropboxMonitor.plist',
                '~/Library/Preferences/com.dropbox.tungsten.helper.plist',
                '~/Library/Preferences/com.getdropbox.dropbox.plist',
              ]
end
