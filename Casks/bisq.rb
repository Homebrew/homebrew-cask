cask 'bisq' do
  version '1.1.2'
  sha256 '81d67fcfa4dff1a1a39fb6d6c135df19ca4dc8f8089f57aa88167bb79ec0ead5'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
