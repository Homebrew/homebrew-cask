cask 'bisq' do
  version '0.8.0'
  sha256 '897c569891d7c6ea1e38c25aad1a62d0b9551abed6c600f16395134e19826990'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.io/'

  app 'Bisq.app'
end
