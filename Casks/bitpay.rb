cask 'bitpay' do
  version '3.15.2'
  sha256 '793961e1b1e0a2cdf1b9a770191399531cff5c5388e38461ffc72b0f1dc5c7d4'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '95aff0b7be3e2ad3406cd086886c8c22c31540c358875e1e52f45c039d917ffb'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
