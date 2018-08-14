cask 'bisq' do
  version '0.7.1'
  sha256 'aea3c6e0586b0cb27b6583ef706f6b5350dfc9076989aa2a5f13b0e085e0c582'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
