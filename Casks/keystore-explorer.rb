cask 'keystore-explorer' do
  version '5.4.0'
  sha256 '399e7dad4a645725cc001de01a07a851aed96bff1eb7c3bdaab0ab6494427f51'

  # github.com/kaikramer/keystore-explorer was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://github.com/kaikramer/keystore-explorer/releases.atom'
  name 'KeyStore Explorer'
  homepage 'https://keystore-explorer.org/'

  app 'KeyStore Explorer.app'
end
