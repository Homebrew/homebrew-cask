cask 'lbry' do
  version '0.26.1'
  sha256 '832a26cdb0b20eef5bc317cc3fa15c6bcef8c1d1a12aeb7acbccd82b96d085d1'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
