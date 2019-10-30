cask 'bisq' do
  version '1.2.1'
  sha256 'ca31d9fa10ce7977ee6aa7f9d10ddd1b6fa05e908862fbc1d201865b12ddff22'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
