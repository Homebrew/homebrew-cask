cask :v1 => 'launchpad-manager-yosemite' do
  version :latest
  sha256 :no_check

  url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'
  name 'Launchpad Manager'
  appcast 'http://launchpadmanager.com/appyos/sparkle.rss',
          :sha256 => 'f0e662903635a480bb1cb08122f4d1f743e694442c508e5f71c522d99128abb3'
  homepage 'http://launchpadmanager.com/'
  license :commercial

  app 'Launchpad Manager Yosemite.app'
end
