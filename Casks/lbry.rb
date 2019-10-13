cask 'lbry' do
  version '0.36.1'
  sha256 'bfc943a8c6631e513bbfa8cfb1da22bc8d07a8297b16f291be4d2a43a5eb960c'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
