cask 'lbry' do
  version '0.29.4'
  sha256 '87e802fd9cb1ea175afad5479c0b24c5ab2904424dde3e084f5f9e083921da77'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
