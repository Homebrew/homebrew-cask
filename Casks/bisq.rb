cask 'bisq' do
  version '1.2.9'
  sha256 'b83f1233d1d3608f139f3e232a331febb72c0fe5a72af2bcdec2d1b6881ce419'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
