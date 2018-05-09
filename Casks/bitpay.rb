cask 'bitpay' do
  version '4.3.2'
  sha256 'afdcc1556ee3294e10045324907075e98bb831791f4503b6a9ee4f171c973185'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '8fa6b12d7e49da98d6087e704b93eec3b13620daf73b621397c363fc979517e1'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
