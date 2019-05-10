cask 'bisq' do
  version '1.1.1'
  sha256 '1d664747db39926ef630a051ef732455b2056b3e2dee232debc503b5740975ed'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
