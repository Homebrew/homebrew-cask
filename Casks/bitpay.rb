cask 'bitpay' do
  version '3.9.1'
  sha256 'f528d754e299a66dde1c09044ec65895e9175c1307209acd96765c18f6835d7a'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom',
          checkpoint: '3497b2ab135e91925c0fb786ffab656fffe92e64331106971ba872af92e05bc3'
  name 'BitPay'
  homepage 'https://bitpay.com/'
  gpg "#{url}.sig", key_id: '9d17e656bb3b6163ae9d71725cd600a61112cfa1'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
