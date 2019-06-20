cask 'lbry' do
  version '0.33.2'
  sha256 '1acf4d37a207e2b3329b19611acc26167a0ceaa3f92059cd94e2160c85b4a994'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
