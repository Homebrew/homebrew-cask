cask 'bisq' do
  version '0.6.7'
  sha256 '8c7ad8f9887e67623cc2bea791f453ffe321be6c5ce3079fc89cf413bd43fa62'

  # github.com/bisq-network/exchange was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/exchange/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/exchange/releases.atom',
          checkpoint: 'e987ac85abc1368aacb52d63c4dceb36b3e8cb5e6bd7c2fb8eefab7d9e6f947d'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
