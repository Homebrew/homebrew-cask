cask 'bitpay' do
  version '3.0.6'
  sha256 '4af532787a947f60c3a1e806f140640da0b4ffe05d7e436f79349c021cfede4b'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'cf45a10df159feb1e915360a2c095b245a43b5be2486d104d03ba73cc3a60223'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'
end
