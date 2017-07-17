cask 'bisq' do
  version '0.5.2'
  sha256 'd2edab14c1ec8cf6f748c53c64fe7e8f0096cdbb3af4157da7b47da6c79496c8'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare/releases.atom',
          checkpoint: 'cfcd4a185ded5d1e6dd0ab8534439f97176362b99c80f8d83ff044b764a79034'
  name 'Bisq'
  homepage 'https://bitsquare.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
