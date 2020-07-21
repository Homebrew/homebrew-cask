cask 'bisq' do
  version '1.3.6'
  sha256 '80e15a5c5eb9164b48ffc293aa7c24988b1b9f586537ff4c49967e0d06c23704'

  # github.com/bisq-network/bisq/ was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.network/'

  app 'Bisq.app'
end
