cask 'bitpay' do
  version '3.7.1'
  sha256 '9851b5ea2bea9a84de3d4b327ab8acb78a7bcd8738a8ad38497e91362cc58917'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'de673f5a2182368cbb1d0edf10d9d68c99cbecc3391b06d4e834467abe21696c'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'
end
