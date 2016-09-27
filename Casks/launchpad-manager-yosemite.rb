cask 'launchpad-manager-yosemite' do
  if MacOS.version <= :mavericks
    version :latest
    sha256 :no_check

    url 'http://launchpadmanager.com/download.php/LaunchpadManager.dmg'

    app 'Launchpad Manager.app'
  else
    version '1.0.5'
    sha256 'a276fb3aa0fc6259ffd3504c2c6e35c1c55c79124423d300c6ae5e6c2a12c18f'

    url 'http://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg'
    appcast 'http://launchpadmanager.com/appyos/sparkle.rss',
            checkpoint: 'b5fe97a8e3df08de3fb6aceda55ef79860d549e4a4aaa64f0d8ac29f3a6e6969'

    app 'Launchpad Manager Yosemite.app'
  end

  name 'Launchpad Manager'
  homepage 'http://launchpadmanager.com/'
  license :commercial

  zap delete: '~/Library/Application Support/Launchpad Manager'
end
