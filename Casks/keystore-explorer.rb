cask 'keystore-explorer' do
  version '5.4.3'
  sha256 '04bb9a03f56fb279fb9778bd440179b69cd6b2455da02ed1304c73e736afd26d'

  # github.com/kaikramer/keystore-explorer/ was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://github.com/kaikramer/keystore-explorer/releases.atom'
  name 'KeyStore Explorer'
  homepage 'https://keystore-explorer.org/'

  app 'KeyStore Explorer.app'
end
