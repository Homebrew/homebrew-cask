cask 'bisq' do
  version '1.1.0'
  sha256 '03a3d2b7bdf9270cb8dda5eae2d45697c4d399246e3881703652102e56e2db91'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
