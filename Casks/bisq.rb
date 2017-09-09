cask 'bisq' do
  version '0.5.3'
  sha256 'fa3b44ea298f66be697556b967d53e78964abc8b9da52bc8bad5e0500fd4b65b'

  # github.com/bisq-network/exchange was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/exchange/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/exchange/releases.atom',
          checkpoint: 'bead53dd88aa63b03eeffb93868ec02b972c9bc8fe1950f4a149d8d2b36fb075'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
