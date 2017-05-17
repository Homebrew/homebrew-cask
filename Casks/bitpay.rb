cask 'bitpay' do
  version '3.2.0'
  sha256 '6427948d520262d0b18fa85dcef7797b5f9393d72a62fbb01cc2282ba02c223b'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'd4f00bf868b39cd25caa5e4fe7aac91b039079772c7785f2f4cd9b3bcf6185f7'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'
end
