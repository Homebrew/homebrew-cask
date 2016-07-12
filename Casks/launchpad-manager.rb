cask 'launchpad-manager' do
  version '1.3.10'
  sha256 'f686a9a332663a003e9fabd32a1d44fc98debda15225368f1e8aef181955bc72'

  url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'
  appcast 'http://launchpadmanager.com/appyos/sparkle.rss',
          checkpoint: '9bd3cfb349d301c2e1e6316c250307d002cde68d1773daf757872f61580f9ff7'
  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'
  license :commercial

  app 'Launchpad Manager.app'
end
