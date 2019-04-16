cask 'bisq' do
  version '1.0.0'
  sha256 'cc445bac9761b5adb77d6397760c6ab2ec369a222c2a9ce5d850e7a7c08c4b20'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.io/'

  app 'Bisq.app'
end
