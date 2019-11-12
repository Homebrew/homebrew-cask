cask 'keymanager' do
  version '3.7.10'
  sha256 '74820161ce1828a669f7ad56f3787ce51fed5167d8c8a3d746e9d518bb7a1838'

  # keymanager.trustasia.com was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
