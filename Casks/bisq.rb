cask 'bisq' do
  version '0.5.3'
  sha256 'fa3b44ea298f66be697556b967d53e78964abc8b9da52bc8bad5e0500fd4b65b'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare/releases.atom',
          checkpoint: '9e0099bc84038f67609e5a3d7327f3adaffedfbac879f98ddc3b1a32706efb2d'
  name 'Bisq'
  homepage 'https://bitsquare.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
