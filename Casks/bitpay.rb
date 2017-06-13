cask 'bitpay' do
  version '3.4.0'
  sha256 '32a7f0339b54669b45604646d73bd93fc512834d1e078997c2c139dec3bda568'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'fb1285278a060ae1a67ac5e8058146a28037fd47cd26257673d858d33b2f00ed'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'
end
