cask 'keymanager' do
  version '2.2.0'
  sha256 '2a95a3c4b6ab0919fee7bab8015a6f40beb97efd6e574877ab86b295b7df03f3'

  # keymanager.trustasia.com was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
