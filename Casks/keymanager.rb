cask 'keymanager' do
  version '1.2.16'
  sha256 'f2e200b1da061bf7a53898c4cb41f4f79fe1e89cb49fdbb923f9bffcd08ff2e9'

  # keymanager.trustasia.com was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
