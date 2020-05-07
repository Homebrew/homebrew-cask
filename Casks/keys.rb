cask 'keys' do
  version '0.0.39'
  sha256 'ee41e52dee1db45208504561c9ca442fdf4ba3d801ddeae0584ec7130d7b1f15'

  # github.com/keys-pub/app was verified as official when first introduced to the cask
  url "https://github.com/keys-pub/app/releases/download/v#{version}/Keys-#{version}.dmg"
  appcast 'https://github.com/keys-pub/app/releases.atom'
  name 'Keys'
  homepage 'https://keys.pub/'

  license :oss

  app 'Keys.app'
end
