cask 'bitpay' do
  version '1.2.1'
  sha256 '4a2e400560e1e1d00fe7e6e9a8709d85fcc78d8ae1ef186905150220d730438d'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url 'https://github.com/bitpay/copay/releases/download/bitpay/BitPay.dmg'
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '1b6db5d705a99a71e3a4340789646982ec11ddbc24b4c0b2fbfabe7912e024df'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'
end
