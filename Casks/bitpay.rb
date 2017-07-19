cask 'bitpay' do
  version '3.7.0'
  sha256 '07ec05d757c1c48607001e562418428df7a6bb6f91a8eb56cd1cb367dc2b2802'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '259374855bcdf7d300050a55074578dac00685e1fdc7ccd9f825f499511951a0'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'
end
