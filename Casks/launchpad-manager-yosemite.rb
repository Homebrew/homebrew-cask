cask 'launchpad-manager-yosemite' do
  version :latest
  sha256 :no_check

  url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'
  appcast 'http://launchpadmanager.com/appyos/sparkle.rss',
          :checkpoint => 'd94a991ecfd0f0ec346d878ec80f703c146db7234655db5ad3622cfe78904550'
  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'
  license :commercial

  app 'Launchpad Manager Yosemite.app'
end
