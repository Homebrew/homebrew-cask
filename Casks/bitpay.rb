cask 'bitpay' do
  version '3.14.0'
  sha256 'e00f3a557f5cc3b97e28c3c11e13be281d4a8e11299743abbe41b5c73d5c7614'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: 'f558ac51ea5a6cf6a7c61347731b5221625c8fb871f9a5f415cdfd53124ccfcc'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
