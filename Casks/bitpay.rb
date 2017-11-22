cask 'bitpay' do
  version '3.9.0'
  sha256 'fb3f7eea26b2d62e9f22ba243bbfdaec45b7f9ff8081c17f11f11bc8cb7ad117'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '22862b67fb0a0944a96297989fe70fab4473a278990719ca62b5bd95ab8d01da'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
