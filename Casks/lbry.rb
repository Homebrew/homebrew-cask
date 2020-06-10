cask 'lbry' do
  version '0.46.1'
  sha256 '88f5b6cbc7265d17b05dd39a322b032aaf34fbb91672a3f4832fbb8c1176a47c'

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
