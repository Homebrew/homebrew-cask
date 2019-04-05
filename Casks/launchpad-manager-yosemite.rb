cask 'launchpad-manager-yosemite' do
  if MacOS.version <= :mavericks
    version '1.3.11'
    sha256 'f686a9a332663a003e9fabd32a1d44fc98debda15225368f1e8aef181955bc72'

    url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'

    app 'Launchpad Manager.app'
  else
    version '1.0.8'
    sha256 '571c4c5b760e608984d47aa8398e5c1666533158fa65d1afae18ce7f3844a877'

    url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'
    appcast 'http://launchpadmanager.com/appyos/sparkle.rss'

    app 'Launchpad Manager Yosemite.app'
  end

  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'

  zap trash: [
               '~/Library/Application Support/Launchpad Manager',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.attilamiklosi.yos.launchpadmanager.sfl*',
             ]
end
