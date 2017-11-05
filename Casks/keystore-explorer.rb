cask 'keystore-explorer' do
  version '5.3.1'
  sha256 '172afbb9a2c47d9f549ed8efc3a6751da0b8659c2602594a107ee7c0d282354a'

  # github.com/kaikramer/keystore-explorer was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://github.com/kaikramer/keystore-explorer/releases.atom',
          checkpoint: 'a3a5556f83c974e9d36a9aec59d7f4a8358d159f7f3241c303714463444ff6af'
  name 'KeyStore Explorer'
  homepage 'http://keystore-explorer.org/'

  app 'KeyStore Explorer.app'
end
