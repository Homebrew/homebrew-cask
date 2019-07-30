cask 'bisq' do
  version '1.1.4'
  sha256 'a53cbce3a08c88b92aac8c4f9ed7df6d46792d6e1f4e924293e090393ee2acad'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
