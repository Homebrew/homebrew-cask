cask 'copay' do
  version '3.9.1'
  sha256 '1300dd42e801c7e82754a601fb9e1953242e41f25e29ab4d9bf43376ff288ec6'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/Copay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '3497b2ab135e91925c0fb786ffab656fffe92e64331106971ba872af92e05bc3'
  name 'Copay'
  homepage 'https://copay.io/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'Copay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
