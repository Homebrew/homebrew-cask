cask 'syncterm' do
  version :latest
  sha256 :no_check

  url 'http://syncterm.bbsdev.net/SyncTERM.dmg'
  name 'SyncTERM'
  homepage 'http://syncterm.bbsdev.net/'

  pkg 'SyncTERM.pkg'

  uninstall pkgutil: 'net.synchro.syncterm.SyncTERM.pkg'

  zap trash: [
               '~/Library/Preferences/SyncTERM',
               '~/Library/Preferences/syncterm.plist',
             ]
end
