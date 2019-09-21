cask 'bisq' do
  version '1.1.6'
  sha256 '5d52b4cfc1c59cc31e132c234d493c563d6f2e3fa3123d0b89b8239107106474'

  # github.com/bisq-network/bisq was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
