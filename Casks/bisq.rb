cask 'bisq' do
  version '0.9.5'
  sha256 '5ece20924db7a6d979861067d991b811da02d3f367e0c4f60c5576179a4e59d2'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.io/'

  app 'Bisq.app'
end
