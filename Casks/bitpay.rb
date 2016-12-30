cask 'bitpay' do
  version :latest
  sha256 :no_check

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url 'https://github.com/bitpay/copay/releases/download/bitpay/BitPay.dmg'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'
end
