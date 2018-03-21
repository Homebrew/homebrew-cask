cask 'bisq' do
  version '0.6.6'
  sha256 '5756ff8b14b10d0c79083a4a0ef59fc673596d615e283e324338dc4b22f6ac9c'

  # github.com/bisq-network/exchange was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/exchange/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/exchange/releases.atom',
          checkpoint: '7ce578f13f263192fdf5bb645f5546eb3fc5442c7435929ebd75dab7550111b2'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
