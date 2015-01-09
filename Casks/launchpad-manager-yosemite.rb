cask :v1 => 'launchpad-manager-yosemite' do
  version :latest
  sha256 :no_check

  url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'
  name 'Launchpad Manager Yosemite'
  homepage 'http://launchpadmanager.com/'
  license :commercial

  app 'Launchpad Manager Yosemite.app'
end