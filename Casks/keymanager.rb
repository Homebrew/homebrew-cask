cask 'keymanager' do
  version '3.13.10'
  sha256 'bd09c00fc86d0421f5ae6dd7e52202fd173552df17f9d90726ba8749095a710a'

  # keymanager.trustasia.com/ was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
