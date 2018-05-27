cask 'bitpay' do
  version '4.3.6'
  sha256 'fb7fde80b70d172c4b6d58ef22581fe997cc1a8f54e95c87228910c2ce10f35f'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'eeabdc6164f4b5cc934fd0554a911e2104b744d7b339cf46c95ea4d1876ab6dd'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
