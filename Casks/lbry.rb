cask 'lbry' do
  version '0.47.0'
  sha256 '48dbdc95b79ac8578e6d886a3083976797588ba24f2a676fa53c3ca0ec667ff8'

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
