cask 'keeweb' do
  version '1.4.1'
  sha256 '447b584f90fe3d7111fd9f4ea52d20a1679aad30c1ba1d6f40c115b04fffd00d'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: 'ff94c926ea2edefc63ece9cf2c2628526eed3f2d77a0ab1b2614496f0275e12e'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'
end
