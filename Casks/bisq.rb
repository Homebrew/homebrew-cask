cask 'bisq' do
  version '0.6.7'
  sha256 '8c7ad8f9887e67623cc2bea791f453ffe321be6c5ce3079fc89cf413bd43fa62'

  # github.com/bisq-network/bisq-desktop was verified as official when first introduced to the cask
  url "https://github.com/bisq-network/bisq-desktop/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bisq-network/bisq-desktop/releases.atom',
          checkpoint: '0cdbd7e724ca3c88060485491b5aa007217629f9f5adcb1be754f2632347cbd5'
  name 'Bisq'
  homepage 'https://bisq.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
