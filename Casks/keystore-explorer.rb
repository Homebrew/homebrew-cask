cask 'keystore-explorer' do
  version '5.4.2'
  sha256 '8f9b9b6c1d84f07772261778af37d69ab8e16defabe924a33472e4e10b743eb5'

  # github.com/kaikramer/keystore-explorer was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg"
  appcast 'https://github.com/kaikramer/keystore-explorer/releases.atom'
  name 'KeyStore Explorer'
  homepage 'https://keystore-explorer.org/'

  app 'KeyStore Explorer.app'
end
