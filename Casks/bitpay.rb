cask 'bitpay' do
  version '3.14.2'
  sha256 '5f7da8dfb9e8944d696cded33fbfa18115f01a151aed385f4e5fb04be7a6dd6e'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '0dc73ed919aa9337dad13787c755303b86945bc293ff3265014585283ae2b31d'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
