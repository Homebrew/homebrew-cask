cask 'keymanager' do
  version '3.13.4'
  sha256 'f31ef3f3082453337a89e33207c83ee7efd517b1ab6f95eae9d50d9773462547'

  # keymanager.trustasia.com/ was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name 'KeyManager'
  homepage 'https://keymanager.org/'

  app 'KeyManager.app'
end
