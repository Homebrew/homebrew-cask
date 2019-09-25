cask 'lbry' do
  version '0.35.7'
  sha256 'e1625254463418cf3c39cd6d670f2a96a1f19cb9855706d3794b5402139d6aad'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
