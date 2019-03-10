cask 'lbry' do
  version '0.29.3'
  sha256 'fe6b743671b437498b0100dd53c6129a1fbc3491386cca0f2e4c6b184064c178'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
