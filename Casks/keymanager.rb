cask 'keymanager' do
  version '2.5.0'
  sha256 '82874c3b541cdc4322a67c58482628ceebf4cdf5b15622eb26b6dc43693fdc72'

  # keymanager.trustasia.com was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
