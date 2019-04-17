cask 'bisq' do
  version '1.0.1'
  sha256 '75fcf20dc1ccca51d0c7588ee704df5eb7d66fbc07c8ab3a9a203b110e881c9b'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.io/'

  app 'Bisq.app'
end
