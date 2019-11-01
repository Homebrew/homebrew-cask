cask 'launchpad-manager' do
  version '1.3.11'
  sha256 'f686a9a332663a003e9fabd32a1d44fc98debda15225368f1e8aef181955bc72'

  url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'
  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'

  app 'Launchpad Manager.app'

  zap trash: [
               '~/Library/Application Support/Launchpad Manager',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.attilamiklosi.yos.launchpadmanager.sfl*',
             ]
end
