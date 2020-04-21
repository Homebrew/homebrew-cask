cask 'bisq' do
  version '1.3.2'
  sha256 'c1a70e0511ae9ee3dbf26946321e2df22d7930670826526cb5ef8b40605b9ac0'

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
