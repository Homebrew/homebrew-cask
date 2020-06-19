cask 'keymanager' do
  version '3.14.0'
  sha256 '8e39ee2a3f16253fa3276af12a0c0eb9e6adbd358bc1f6b014156d5afb6c5c2b'

  # keymanager.trustasia.com/ was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
