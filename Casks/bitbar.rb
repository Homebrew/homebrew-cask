cask 'bitbar' do
  version '1.8.0'
  sha256 '5c8704a7ce50fc59d2678b41916e612572366bdcb551ffb3ec12919cb0ac7c49'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: 'eb6a33a5a3605c6ac5105fcb3ed9a817cbbae8c04f76fc8f80d486aabbc2a103'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
