cask 'keeweb' do
  version '1.6.3'
  sha256 'd1b27e258eaba37f2956c5d145209dd9a1f4c568853bfe7ea29c26073ceff685'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '4913b4159a4eac3d588cdb18c5665adb9a2a2aed68b022e90e03a3df09199f7f'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'

  uninstall_preflight do
    set_ownership "#{appdir}/KeeWeb.app"
  end
end
