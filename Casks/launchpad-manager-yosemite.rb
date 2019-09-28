cask 'launchpad-manager-yosemite' do
  if MacOS.version <= :mavericks
    version '1.3.11'
    sha256 'f686a9a332663a003e9fabd32a1d44fc98debda15225368f1e8aef181955bc72'

    url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'

    app 'Launchpad Manager.app'
  else
    version '1.0.10'
    sha256 '88b37120c0ae022309573c4d2587a6ec85df7895773bca0fd3b5ba6cd86461a6'

    url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'

    app 'Launchpad Manager.app'
  end

  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'

  zap trash: [
               '~/Library/Application Support/Launchpad Manager',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.attilamiklosi.yos.launchpadmanager.sfl*',
             ]
end
