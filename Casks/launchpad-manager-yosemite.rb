cask 'launchpad-manager-yosemite' do
  if MacOS.version <= :mavericks
    version :latest
    sha256 :no_check

    url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'

    app 'Launchpad Manager.app'
  else
    version '1.0.4'
    sha256 '5edea718d385b222037f781932b9aa4097ff1a68133ab68d1ac4aa1de461ad8b'

    url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'
    appcast 'http://launchpadmanager.com/appyos/sparkle.rss',
            checkpoint: '9bd3cfb349d301c2e1e6316c250307d002cde68d1773daf757872f61580f9ff7'

    app 'Launchpad Manager Yosemite.app'
  end

  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'
  license :commercial
end
