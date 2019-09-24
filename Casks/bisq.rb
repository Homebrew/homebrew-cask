cask 'bisq' do
  version '1.1.7'
  sha256 'ef92e10897b0a4dfd83d2b24c4b18376a2341069f24d73b72db4bcc7ce197576'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
