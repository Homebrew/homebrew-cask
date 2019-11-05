cask 'bisq' do
  version '1.2.2'
  sha256 '4d78561b414d51bfda0f6de5aadfd85d62e5030b2b77def1f91e22799a2f1005'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
