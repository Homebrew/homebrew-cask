cask 'keystore-explorer' do
  version '5.4.1'
  sha256 'eebcb00a687afa090172a5121cd141ac194e287a7991a7dec328ae996e2f187d'

  # github.com/kaikramer/keystore-explorer was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://github.com/kaikramer/keystore-explorer/releases.atom'
  name 'KeyStore Explorer'
  homepage 'https://keystore-explorer.org/'

  app 'KeyStore Explorer.app'
end
