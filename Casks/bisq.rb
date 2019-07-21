cask 'bisq' do
  version '1.1.3'
  sha256 'ceff20fbb4c446c236d7d92b05ee82a389c3a05121e23031152b61747b5c007c'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
