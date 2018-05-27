cask 'bisq' do
  version '0.7.0'
  sha256 '9b8e3d99e8f8dc1ecfb7a2ecfb3f267ed95676b171d63f112843dbdf2808c1d6'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom',
          checkpoint: '9d487afe87269474fc2273253c9d721b8bbe7ac6697ad4596c32da02f1a39f75'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
