cask 'lbry' do
  version '0.22.2'
  sha256 '4455551dca7fa77df17147f1f866775bc5ecc97caeb15d2dddfc4030bb27cf1c'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
