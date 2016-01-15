cask 'launchpad-manager-yosemite' do
  version :latest
  sha256 :no_check

  url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'
  appcast 'http://launchpadmanager.com/appyos/sparkle.rss',
          :checkpoint => '9bd3cfb349d301c2e1e6316c250307d002cde68d1773daf757872f61580f9ff7'
  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'
  license :commercial

  app 'Launchpad Manager Yosemite.app'
end
