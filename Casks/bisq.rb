cask 'bisq' do
  version '0.6.0'
  sha256 'e1f5a6f996a3b51776aea104a5a1dd5db171cc0460636d5646a08ff92e8b9125'

  # github.com/bisq-network/exchange was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/exchange/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/exchange/releases.atom',
          checkpoint: '02d60696e68d56180fcd3f2e7a152980e649096d384bf9f60adabb6af0a65aab'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
