cask 'bitpay' do
  version '3.1.3'
  sha256 'de0cfc3f68a97a311e52ef310671aa393099274638ec30ec0d5aa53bc273c161'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'ba07d809a68e2320d1c22551d5a479dc9858ac637785d62f3af7061272447979'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'
end
