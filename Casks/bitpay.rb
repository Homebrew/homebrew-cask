cask 'bitpay' do
  version '4.6.1'
  sha256 '963de33b98820db0354a86f8f640d46c53a8a6c02d858178eecbbd6ae3fc0b1c'

  # github.com/bitpay/copay was verified as official when first introduced to the cask
  url "https://github.com/bitpay/copay/releases/download/v#{version}/BitPay.dmg"
  appcast 'https://github.com/bitpay/copay/releases.atom'
  name 'BitPay'
  homepage 'https://bitpay.com/'

  app 'BitPay.app'

  zap trash: '~/Library/Application Support/bitpay'
end
