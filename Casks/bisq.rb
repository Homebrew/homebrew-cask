cask 'bisq' do
  version '1.2.7'
  sha256 '15747c63eaf53d9135464872fc45545f1a97f08b170182b72abf98daedef5ddb'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
