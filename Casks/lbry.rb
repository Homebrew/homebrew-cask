cask 'lbry' do
  version '0.38.0'
  sha256 'dd2df5b31b96f4466fc2bfa8f4fad6fccae62c3cfea71e09f570c3fb764c69a3'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
