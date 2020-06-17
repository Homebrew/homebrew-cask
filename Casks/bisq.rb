cask 'bisq' do
  version '1.3.5'
  sha256 'e3044823f6adf916aaaafe00aff0c7027bf037f6b44323e90281487f1dc6374c'

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
