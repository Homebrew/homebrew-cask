cask 'syncterm' do
  version '1.0'
  sha256 'c701f3a41b72df150816dbb38187d238e557b378afcfa1146cdc7ec5da1193a5'

  # sourceforge.net/syncterm/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/syncterm/syncterm/syncterm-#{version}/SyncTERM.dmg"
  appcast 'https://sourceforge.net/projects/syncterm/rss'
  name 'SyncTERM'
  homepage 'https://syncterm.bbsdev.net/'

  pkg 'SyncTERM.pkg'

  uninstall pkgutil: 'net.synchro.syncterm.SyncTERM.pkg'

  zap trash: [
               '~/Library/Preferences/SyncTERM',
               '~/Library/Preferences/syncterm.plist',
             ]
end
