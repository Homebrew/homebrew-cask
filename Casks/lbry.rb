cask 'lbry' do
  version '0.38.2'
  sha256 '5b0b31a9842c299668c1115f7c2dd2c9f2430386a4556cb4353485c510176e5a'

  # github.com/lbryio/lbry-desktop was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-desktop/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-desktop/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.com/'

  app 'LBRY.app'
end
