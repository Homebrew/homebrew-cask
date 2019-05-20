cask 'lbry' do
  version '0.32.2'
  sha256 'daa80d2e57c06260c069197360b5ff18f4338d78af9d00f06e9018d52ad15c80'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
