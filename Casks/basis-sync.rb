cask 'basis-sync' do
  version '1.7.3'
  sha256 '9d2434cbd8bf49a42df236bc9b4a4b999a28a2ce2e990237ac908199638328b5'

  # mybasis-duck.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mybasis-duck.s3.amazonaws.com/client/BasisSync-#{version}.dmg"
  name 'Basis Sync'
  homepage 'https://www.mybasis.com/'
  license :closed

  app 'Basis Sync.app'
end
