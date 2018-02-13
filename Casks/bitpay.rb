cask 'bitpay' do
  version '3.14.1'
  sha256 '8e6ef2860f7d7dd5952d9599865256202eb85e05b5052890902add7cdc2bc7fb'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'b431beb451e59a79ab660d86f85a40a51db36a2e05cff0053abe31089a208e03'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
