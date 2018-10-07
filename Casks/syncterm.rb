cask 'syncterm' do
  version :latest
  sha256 :no_check

  url 'https://syncterm.bbsdev.net/SyncTERM.dmg'
  name 'SyncTERM'
  homepage 'https://syncterm.bbsdev.net/'

  pkg 'SyncTERM.pkg'

  uninstall pkgutil: 'net.synchro.syncterm.SyncTERM.pkg'

  zap trash: [
               '~/Library/Preferences/SyncTERM',
               '~/Library/Preferences/syncterm.plist',
             ]
end
