cask 'keymanager' do
  version '3.4.0'
  sha256 '7a5f44354e4784cd914977ef63979df4393063ed5be5958eb778042dda2782ae'

  # keymanager.trustasia.com was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
