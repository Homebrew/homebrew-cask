cask 'keeweb' do
  version '1.2.1'
  sha256 'a92974c54477f98782c52562593b10e78672d12f0a18e6140fe880afbc5bbde7'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '6c3848370e941f0180a41cd3d8e66da69c2d2c601b2f3661c9a3537deede98b6'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
