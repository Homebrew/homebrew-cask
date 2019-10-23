cask 'lbry' do
  version '0.37.1'
  sha256 '000484d95a0c54cb880d2a8accd649e41dcbc0c7a329fa76dc80fdc88c671d19'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
