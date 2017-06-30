cask 'bisq' do
  version '0.5.0'
  sha256 'c8d7b040f6f1e506741054b19677671e99ae3265eb879aa5d2c902667b81c63b'

  # github.com/bitsquare/bitsquare was verified as official when first introduced to the cask
  url "https://github.com/bitsquare/bitsquare/releases/download/v#{version}/Bisq-#{version}.dmg"
  appcast 'https://github.com/bitsquare/bitsquare/releases.atom',
          checkpoint: 'e17cb7c3259e7e08aeeeb391d2d7ad4b5d0c8c535b32891f238379551f955c56'
  name 'Bisq'
  homepage 'https://bitsquare.io/'
  gpg "#{url}.asc", key_id: '1dc3c8c4316a698ac494039cf5b84436f379a1c6'

  app 'Bisq.app'
end
