cask 'bisq' do
  version '1.3.1'
  sha256 'db42438d0e8d5c8d243bff23f7f1ae0685e007d22042ba6debb29e56d225733d'

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
