cask 'keystore-explorer' do
  version '5.4.3'
  sha256 '98c4b78c4ac4c2026b7664af126acfdc49a69d5eb181a2f08248ce091edebde3'

  # github.com/kaikramer/keystore-explorer was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://github.com/kaikramer/keystore-explorer/releases.atom'
  name 'KeyStore Explorer'
  homepage 'https://keystore-explorer.org/'

  app 'KeyStore Explorer.app'
end
