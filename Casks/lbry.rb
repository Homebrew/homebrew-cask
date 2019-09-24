cask 'lbry' do
  version '0.35.4'
  sha256 '13a8ae4bed3c42f16acf610d4a640cd1874e315a169648c294df4db16b7c9ea9'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
