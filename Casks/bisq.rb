cask 'bisq' do
  version '1.1.5'
  sha256 '564e644f91e886be92fc739906c8909e271453c67f43ab9b2fda15470e9aee69'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
