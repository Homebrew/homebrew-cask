cask 'lbry' do
  version '0.37.0'
  sha256 '0810bebaa86fe5ab2357a6ed3c28654b6d0dcce7e0ac28f2a466e78b737cd3ae'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
