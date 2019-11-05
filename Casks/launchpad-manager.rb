cask 'launchpad-manager' do

  if MacOS.version = :yosemite
    version '1.0.10'
    sha256 '88b37120c0ae022309573c4d2587a6ec85df7895773bca0fd3b5ba6cd86461a6'

    url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'

  else
    version :latest
    sha256 :no_check

    url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'
  end

  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'

  app 'Launchpad Manager.app'

  zap trash: [
               '~/Library/Application Support/Launchpad Manager',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.attilamiklosi.yos.launchpadmanager.sfl*',
             ]
end
