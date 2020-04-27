cask 'lbry' do
  version '0.45.0'
  sha256 '7017cea0fcb7a9d7da3813c39e4f59b13e1ff121826fe6bef8e1e5af3a41cbb8'

  # github.com/lbryio/lbry-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
