cask 'launchpad-manager-yosemite' do
  if MacOS.release <= :mavericks
    version :latest
    sha256 :no_check
    url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'
    app 'Launchpad Manager.app'
  else
    version :latest
    sha256 :no_check
    url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'

    app 'Launchpad Manager Yosemite.app'
    end

  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'
  license :commercial
end
