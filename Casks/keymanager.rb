cask 'keymanager' do
  version '3.13.0'
  sha256 '49f1129289dd9b404774a9f5e508b26f8f78908e53d1c5df59df745fd113a026'

  # keymanager.trustasia.com/ was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
