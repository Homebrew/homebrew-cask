cask 'keymanager' do
  version '3.9.28'
  sha256 'a70f4187f79608de70f40d733a70b942ce15a17c49d653e4270b576cca240c3f'

  # keymanager.trustasia.com was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
