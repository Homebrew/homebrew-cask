cask 'bisq' do
  version '0.6.3'
  sha256 '844912d358fb903e88c14c099c7b6c94d98c3535f22b0da343de6d1513895dae'

  # github.com/bisq-network/exchange was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/exchange/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/exchange/releases.atom',
          checkpoint: '5aa3f8d4a5114250b3afdd66e4d4e9160c337c78c3a138d06afa7c4e8573d0ef'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
