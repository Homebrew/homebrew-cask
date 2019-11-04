cask 'launchpad-manager' do
  version :latest
  sha256 :no_check

  url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'
  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'

  app 'Launchpad Manager.app'

  zap trash: [
               '~/Library/Application Support/Launchpad Manager',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.attilamiklosi.yos.launchpadmanager.sfl*',
             ]
end
