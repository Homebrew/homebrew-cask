cask 'bitpay' do
  version '4.3.5'
  sha256 '1ec8279677570c0c82ba7dfd6544fc66a0a2a3494680edbc7f91694275d2d7ba'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'eab3dfc008886b760f0e3c4c8f81a4e6a832db0b6fe66683eb0dfc1063a97ef9'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
