cask 'launchpad-manager-yosemite' do
  if MacOS.version <= :mavericks
    version '1.3.11'
    sha256 'f686a9a332663a003e9fabd32a1d44fc98debda15225368f1e8aef181955bc72'

    url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'

    app 'Launchpad Manager.app'
  else
    version '1.0.7'
    sha256 'd5bb7840076af9c2c77f875b8accf0934572777c3a9bdd06dccf3dd1ccc06aeb'

    url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'
    appcast 'http://launchpadmanager.com/appyos/sparkle.rss',
            checkpoint: 'a20e7213e1f27dcfa8fc0a3c85820155f596d02287cf4212cf4f71145b1422ab'

    app 'Launchpad Manager Yosemite.app'
  end

  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'

  zap delete: [
                '~/Library/Application Support/Launchpad Manager',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.attilamiklosi.yos.launchpadmanager.sfl',
              ]
end
