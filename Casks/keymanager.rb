cask 'keymanager' do
  version '3.9.37'
  sha256 '6950bca6c6a25c52ca6306c279c7b412eb6ec74a79183d13b53248acd8b24fb4'

  # keymanager.trustasia.com was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
